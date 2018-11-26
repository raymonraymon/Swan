classdef test2dMicro < testCheckStoredWithFemComputedVariable
    
    
    properties (Access = protected)
        testName = 'test2d_micro';  
        variablesToStore = {'Chomog'}
    end
       
    methods (Access = protected)
        
        function selectComputedVar(obj)
            obj.computedVar{1} = obj.fem.variables.Chomog; 
        end        
        
        function computeVariableThroughFemSolver(obj)
            femSolver = Elastic_Problem_Micro.create(obj.testName);
            femSolver.preProcess;
            femSolver.computeChomog;
            obj.fem = femSolver;
        end
        
    end
    

end

