classdef Filter < handle
    properties
        M0
        Msmooth
        Ksmooth
        P_operator
        coordinates
        connectivities
        x
        x_reg
        dvolu
        nnode
        nelem
        npnod
        ngaus
        shape
    end
    methods
        function preProcess(obj,params)
            obj.M0 = params.M0;
            obj.dvolu = params.dvolu;
            obj.Msmooth = params.Msmooth;
            obj.Ksmooth = params.Ksmooth;
            obj.coordinates = params.coordinates;
            obj.connectivities = params.connectivities;
            obj.nnode = params.nnode;
            obj.nelem = params.nelem;
            obj.npnod = params.npnod;
            obj.ngaus = params.ngaus;
            obj.nnode = params.nnode;
            obj.shape = params.shape;
        end
        
        function A_nodal_2_gauss = computeA(obj)
            A_nodal_2_gauss = sparse(obj.nelem,obj.npnod);
            %fn = ones(1,nelem);
            fn = ones(1,obj.npnod);
            
            dirichlet_data = obj.connectivities';
            fe = zeros(obj.nnode,obj.nelem);
            
            fg = zeros(obj.ngaus,obj.nelem);
            
            for igaus = 1:obj.ngaus
                for inode = 1:obj.nnode
                    fe(inode,:) = fn(dirichlet_data(inode,:));
                    fg(igaus,:) = fg(igaus,:) + obj.shape(inode)*fe(inode,:);
                    A_nodal_2_gauss = A_nodal_2_gauss + sparse(1:obj.nelem,dirichlet_data(inode,:),ones(obj.nelem,1)*obj.shape(inode),obj.nelem,obj.npnod);
                end
            end
            
        end
        
    end
    methods (Static)
        function obj = create(type, optimizer)
            switch type
                case 'P1'
                    switch optimizer
                        case {'MMA','PROJECTED GRADIENT','IPOPT'}
                            obj = Filter_P1_Density;
                        case 'SLERP'
                            obj = Filter_P1_SLERP;
                    end
                case 'PDE'
                    switch optimizer
                        case {'MMA','PROJECTED GRADIENT','IPOPT'}
                            obj = Filter_Density_PDE;
                        case 'SLERP'
                            obj = Filter_SLERP_PDE;
                    end
            end
            
        end
        
        function [F,aire] = faireF2(p,t,psi)
            np = size(p,2); nt = size(t,2);
            F = zeros(np,1);
            p1 = t(1,:); p2 = t(2,:); p3 = t(3,:);
            x1 = p(1,p1); y1 = p(2,p1); x2 = p(1,p2); y2 = p(2,p2); x3 = p(1,p3); y3 = p(2,p3);
            A = 0.5*abs((x2-x1).*(y3-y1)-(x3-x1).*(y2-y1));
            
            beta = (psi<0); beta = pdeintrp(p,t,beta);
            k = find(beta>0.5);
            F = F+accumarray(p1(k)',A(k)/3',[np,1],@sum,0);
            F = F+accumarray(p2(k)',A(k)/3',[np,1],@sum,0);
            F = F+accumarray(p3(k)',A(k)/3',[np,1],@sum,0);
            aire = sum(A(k));
            
            k = find(abs(beta-1/3)<0.01);
            p1 = t(1,k); p2 = t(2,k); p3 = t(3,k);
            psi1 = psi(p1)'; psi2 = psi(p2)'; psi3 = psi(p3)';
            [psis,is] = sort([psi1;psi2;psi3],1);
            is = is+3*ones(3,1)*[0:length(k)-1];
            pl = [p1;p2;p3]; ps = pl(is);
            x1 = p(1,ps(1,:)); y1 = p(2,ps(1,:)); x2 = p(1,ps(2,:)); y2 = p(2,ps(2,:)); x3 = p(1,ps(3,:)); y3 = p(2,ps(3,:));
            x12 = (psis(1,:).*x2-psis(2,:).*x1)./(psis(1,:)-psis(2,:));
            y12 = (psis(1,:).*y2-psis(2,:).*y1)./(psis(1,:)-psis(2,:));
            x13 = (psis(1,:).*x3-psis(3,:).*x1)./(psis(1,:)-psis(3,:));
            y13 = (psis(1,:).*y3-psis(3,:).*y1)./(psis(1,:)-psis(3,:));
            A = 0.5*abs(((x12-x1).*(y13-y1)-(x13-x1).*(y12-y1)));
            F = F+accumarray(ps(1,:)',((1+psis(2,:)./(psis(2,:)-psis(1,:))+psis(3,:)./(psis(3,:)-psis(1,:))).*A/3)',[np,1],@sum,0);
            F = F+accumarray(ps(2,:)',((psis(1,:)./(psis(1,:)-psis(2,:))).*A/3)',[np,1],@sum,0);
            F = F+accumarray(ps(3,:)',((psis(1,:)./(psis(1,:)-psis(3,:))).*A/3)',[np,1],@sum,0);
            aire = aire+sum(A);
            
            k = find(abs(beta-2/3)<0.01);
            p1 = t(1,k); p2 = t(2,k); p3 = t(3,k);
            psi1 = psi(p1)'; psi2 = psi(p2)'; psi3 = psi(p3)';
            [psis,is] = sort([psi1;psi2;psi3],1,'descend');
            is = is+3*ones(3,1)*[0:length(k)-1];
            pl = [p1;p2;p3]; ps = pl(is);
            x1 = p(1,ps(1,:)); y1 = p(2,ps(1,:)); x2 = p(1,ps(2,:)); y2 = p(2,ps(2,:)); x3 = p(1,ps(3,:)); y3 = p(2,ps(3,:));
            x12 = (psis(1,:).*x2-psis(2,:).*x1)./(psis(1,:)-psis(2,:));
            y12 = (psis(1,:).*y2-psis(2,:).*y1)./(psis(1,:)-psis(2,:));
            x13 = (psis(1,:).*x3-psis(3,:).*x1)./(psis(1,:)-psis(3,:));
            y13 = (psis(1,:).*y3-psis(3,:).*y1)./(psis(1,:)-psis(3,:));
            A = 0.5*abs(((x12-x1).*(y13-y1)-(x13-x1).*(y12-y1)));
            F = F-accumarray(ps(1,:)',((1+psis(2,:)./(psis(2,:)-psis(1,:))+psis(3,:)./(psis(3,:)-psis(1,:))).*A/3)',[np,1],@sum,0);
            F = F-accumarray(ps(2,:)',((psis(1,:)./(psis(1,:)-psis(2,:))).*A/3)',[np,1],@sum,0);
            F = F-accumarray(ps(3,:)',((psis(1,:)./(psis(1,:)-psis(3,:))).*A/3)',[np,1],@sum,0);
            aire = aire-sum(A);
        end
    end
end