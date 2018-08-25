classdef Optimizer_PG < Optimizer_Unconstrained
    properties
        kappaMultiplier
        optimality_tol
    end
    
    methods
        function obj = Optimizer_PG(settings,epsilon)
            obj@Optimizer_Unconstrained(settings,epsilon);
            obj.kfrac = 2;
            obj.kappaMultiplier = settings.kappaMultiplier;
            obj.kappa_min = 1e-15;
            obj.max_constr_change = +Inf;
        end
        
        function optimality_tol = get.optimality_tol(obj)
            optimality_tol = obj.target_parameters.optimality_tol;
        end
        
        function rho = computeX(obj,design_variable,gradient)
            rho_n = design_variable;
            rho_step = rho_n-obj.kappa*gradient;
            ub = ones(length(rho_n(:,1)),1);
            lb = zeros(length(rho_n(:,1)),1);
            rho = max(min(rho_step,ub),lb);
            obj.opt_cond = sqrt(obj.scalar_product.computeSP(rho - rho_n,rho - rho_n))/sqrt(obj.scalar_product.computeSP(rho_n,rho_n));
        end
        
        function initKappa(obj,x,gradient)
            if isempty(obj.kappa)
                norm_gamma = sqrt(obj.scalar_product.computeSP(x,x));
                norm_g = sqrt(obj.scalar_product.computeSP(gradient,gradient));
                obj.kappa = norm_gamma/norm_g;
            else
                obj.kappa = obj.kappaMultiplier*obj.kappa*obj.kfrac;
            end
        end
        
        function computeKappa(obj)
            obj.kappa = obj.kappa/obj.kfrac;
        end
    end
end
