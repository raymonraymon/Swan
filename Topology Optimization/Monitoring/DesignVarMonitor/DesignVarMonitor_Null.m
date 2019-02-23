classdef DesignVarMonitor_Null < DesignVarMonitor_Abstract
    
    properties (Access = protected)
        designVarName = []
    end
    
    methods (Access = public)
        
        function obj = DesignVarMonitor_Null(mesh,showBC)
            obj@DesignVarMonitor_Abstract(mesh,showBC);
            close;
        end
        
        function plot(varargin)
        end
        
    end
    
    methods (Access = protected)
        
        function initPlotting(~)
        end
        
        function createCamera(obj)
            nullAxes = axes;
            obj.cam = Camera_Null(nullAxes);
        end
        
    end
    
    methods (Access = protected, Static)
        
        function color = getColor()
            color = [];
        end
        
    end
    
end