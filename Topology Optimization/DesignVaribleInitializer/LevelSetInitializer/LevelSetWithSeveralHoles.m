classdef LevelSetWithSeveralHoles < LevelSetCreator
    
    properties (Access = private)
        hasToShowHoleInBCWarning
        nHoles
        rHoles
        phaseHoles
    end
    
    methods (Access = public)
        
        function obj = LevelSetWithSeveralHoles(input)
            obj.load_holes_settings(input);
            obj.loadWarningOption(input);
            obj.compute(input);
           % obj.showPossibleHoleinBcWarning();
        end
        
    end
    
    methods (Access = protected)
        
        function computeLevelSet(obj)
            ls = ones(obj.lsSize);
            for idim = 1:obj.ndim
                coordV = obj.nodeCoord(:,idim);
                cosDim = obj.computeDirectionalCosinus(coordV,idim);
                ls = ls.*cosDim;
            end
            ls = ls + obj.rHoles-1;
            obj.levelSet = ls;
        end
        
    end
    
    methods (Access = private)
        
        function loadWarningOption(obj,input)
            if isempty(input.warningHoleBC)
                obj.hasToShowHoleInBCWarning = true;
            else
                obj.hasToShowHoleInBCWarning = input.warningHoleBC;
            end
        end
        
        function load_holes_settings(obj,input)
            obj.nHoles = input.nHoles;
            obj.rHoles = input.rHoles;
            obj.phaseHoles = input.phaseHoles;
        end
        
        function cosDir  = computeDirectionalCosinus(obj,coord,dir)
            pos = coord;
            l = max(pos) - min(pos);
            n = obj.nHoles(dir);
            fase = obj.phaseHoles(dir);
            cosDir = cos((n + 1)*pos*pi/l + fase);
        end
        

    end
    
end

