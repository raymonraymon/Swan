classdef test2dStokes_triangle < testCheckStoredAndFemComputedVariable
    
    
    properties (Access = protected)
        testName = 'test2d_stokes_triangle';  
        computedVar
        variablesToStore = {'variable.u','variable.p'}
    end
       
    methods (Access = protected)
        
        function selectComputedVar(obj)
            obj.computedVar{1} = obj.fem.variables.u; 
            obj.computedVar{2} = obj.fem.variables.p; 
        end        
        
    end
    

end

