classdef TopOptTests < testRunner
    
    
    properties (Access = protected)
        FieldOfStudy = 'TopOpt tests'
        tests
    end
    
    methods (Access = public)
        function obj = TopOptTests()
            obj@testRunner();
        end
    end
    
    methods (Access = protected)
        function loadTests(obj)
            obj.tests = {...                
               'test_cantilever';
               'test_cantilever2';
               'test_cantilever3';
               'test_projected_slerp';
               'test_gripping';
               'test_bridge';
               'test_micro';
               'test_micro2';
               'test_bridge2'
                };

        end
    end
    
end

