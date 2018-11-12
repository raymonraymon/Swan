classdef test3dTetrahedra < testCheckStoredAndFemComputedVariable
    
    
    properties (Access = protected)
        testName = 'test3d_tetrahedra';  
        computedVar
        variablesToStore = {'d_u'};
    end
       
    methods (Access = protected)
        
        function selectComputedVar(obj)
            obj.computedVar{1} = obj.fem.variables.d_u;            
        end
        
    end
    

end

