classdef SettingsTranslator < handle
    
    properties (GetAccess = public, SetAccess = private)
        fileName
    end
    
    properties (Access = private)
        oldSettings
        propList
        nProps
    end
    
    methods (Access = public)
        
        function translate(obj,oldSettings)
            obj.init(oldSettings);
            for i = 1:obj.nProps
                prop = obj.propList{i};
                value = oldSettings.(prop);
                %                 if ~isempty(value)
                if strcmp(prop,'filename')
                    s.problemData.problemFileName = value;
                elseif strcmp(prop,'ptype')
                    s.problemData.scale = value;
                elseif strcmp(prop,'homegenizedVariablesComputer')
                    s.homogenizedVarComputerSettings.type = value;
                    s = obj.translateHomogenizedVariablesComputer(s);
                elseif strcmp(prop,'designVariable')
                    s.designVarSettings.type = value;
                elseif strcmp(prop,'initial_case')
                    s.designVarSettings.initialCase = value;
                elseif strcmp(prop,'levelSetDataBase')
                    s = obj.translateLevelSetCreator(s);
                elseif strcmp(prop,'nsteps')
                    s.incrementalSchemeSettings.nSteps = value;
                elseif strcmp(prop,'printIncrementalIter')
                    s.incrementalSchemeSettings.shallPrintIncremental = value;
                elseif strcmp(prop,'Vfrac_initial')
                    s.incrementalSchemeSettings.targetParamsSettings.VfracInitial = value;
                elseif strcmp(prop,'Vfrac_final')
                    s.incrementalSchemeSettings.targetParamsSettings.VfracFinal = value;
                elseif strcmp(prop,'optimality_initial')
                    s.incrementalSchemeSettings.targetParamsSettings.optimalityInitial = value;
                elseif strcmp(prop,'optimality_final')
                    s.incrementalSchemeSettings.targetParamsSettings.optimalityFinal = value;
                elseif strcmp(prop,'constr_initial')
                    s.incrementalSchemeSettings.targetParamsSettings.constrInitial = value;
                elseif strcmp(prop,'constr_final')
                    s.incrementalSchemeSettings.targetParamsSettings.constrFinal = value;
                elseif strcmp(prop,'cost')
                    for k = 1:length(value)
                        s.costSettings.shapeFuncSettings{k}.type = value{k};
                        if strcmp(value{k},'chomog_alphabeta') || strcmp(value{k},'chomog_fraction')
                            if isprop(oldSettings,'micro')
                                s.costSettings.shapeFuncSettings{k}.alpha = oldSettings.micro.alpha;
                                s.costSettings.shapeFuncSettings{k}.beta = oldSettings.micro.beta;
                            end
                            
                        elseif strcmp(value{k},'perimeterConstraint')
                            if isprop(oldSettings,'Perimeter_target')
                                s.costSettings.shapeFuncSettings{k}.PerimeterTarget = oldSettings.Perimeter_target;
                            end
                        end
                    end
                elseif strcmp(prop,'weights')
                    s.costSettings.weights = value;
                elseif strcmp(prop,'filter')
                    s.costSettings.filterType = value;
                    s.constraintSettings.filterType = value;
                elseif strcmp(prop,'constraint')
                    for k = 1:length(value)
                        s.constraintSettings.shapeFuncSettings{k}.type = value{k};
                        if strcmp(value{k},'perimeterConstraint')
                            if isprop(oldSettings,'Perimeter_target')
                                s.constraintSettings.shapeFuncSettings{k}.PerimeterTarget = oldSettings.Perimeter_target;
                            end
                        end
                    end
                elseif strcmp(prop,'optimizer')
                    s.optimizerSettings.type = value;
                elseif strcmp(prop,'constraint_case')
                    s.optimizerSettings.constraintCase = value;
                elseif strcmp(prop,'optimizerUnconstrained')
                    s.optimizerSettings.uncOptimizerSettings.type = value;
                elseif strcmp(prop,'e2')
                    s.optimizerSettings.uncOptimizerSettings.e2 = value;
                elseif strcmp(prop,'ub')
                    s.optimizerSettings.uncOptimizerSettings.ub = value;
                elseif strcmp(prop,'lb')
                    s.optimizerSettings.uncOptimizerSettings.lb = value;
                elseif strcmp(prop,'line_search')
                    s.optimizerSettings.uncOptimizerSettings.lineSearchSettings.type = value;
                elseif strcmp(prop,'HJiter0')
                    s.optimizerSettings.uncOptimizerSettings.lineSearchSettings.HJiter0 = value;
                elseif strcmp(prop,'kappaMultiplier')
                    s.optimizerSettings.uncOptimizerSettings.lineSearchSettings.kappaMultiplier = value;
                elseif strcmp(prop,'kfrac')
                    s.optimizerSettings.uncOptimizerSettings.lineSearchSettings.kfrac = value;
                elseif strcmp(prop,'maxiter')
                    s.optimizerSettings.maxIter = value;
                elseif strcmp(prop,'printing')
                    s.optimizerSettings.shallPrint = value;
                elseif strcmp(prop,'printMode')
                    s.optimizerSettings.printMode = value;
                elseif strcmp(prop,'monitoring')
                    s.optimizerSettings.monitoringDockerSettings.showOptParams = value;
                elseif strcmp(prop,'monitoring_interval')
                    s.optimizerSettings.monitoringDockerSettings.refreshInterval = value;
                elseif strcmp(prop,'plotting')
                    s.optimizerSettings.monitoringDockerSettings.shallDisplayDesignVar = value;
                elseif strcmp(prop,'showBC')
                    s.optimizerSettings.monitoringDockerSettings.shallShowBoundaryConditions = value;
                end
                %                 end
            end
            obj.exportFile(s);
        end
        
    end
    
    methods (Access = private)
        
        function init(obj,oldSettings)
            obj.oldSettings = oldSettings;
            obj.propList = fieldnames(oldSettings);
            obj.nProps = length(obj.propList);
        end
        
        function exportFile(obj,s)
            obj.getFileName();
            json = jsonencode(s);
            fid = fopen(obj.fileName,'w+');
            fprintf(fid,json);
            fclose(fid);
        end
        
        function getFileName(obj)
            old = obj.oldSettings.case_file;
            new = [old '.json'];
            obj.fileName = new;
        end
        
        function s = translateLevelSetCreator(obj,s)
            prop = obj.oldSettings.levelSetDataBase;
            if ~isempty(prop)
                fields = fieldnames(prop);
                for i = 1:length(fields)
                    field = fields{i};
                    value = prop.(field);
                    s.designVarSettings.levelSetCreatorSettings.(field) = value;
                end
            end
        end
        
        function s = translateHomogenizedVariablesComputer(obj,s)
            old = obj.oldSettings;
            switch s.homogenizedVarComputerSettings.type
                case 'ByInterpolation'
                    if isprop(old,'materialInterpolation')
                        s.homogenizedVarComputerSettings.interpolation = old.materialInterpolation;
                    end
                    if isprop(old,'material')
                        s.homogenizedVarComputerSettings.typeOfMaterial = old.material;
                    end
                    if isprop(old,'TOL')
                        s.homogenizedVarComputerSettings.constitutiveProperties = old.TOL;
                    end
                case 'ByVademecum'
                    if isprop(old,'vademecumFileName')
                        s.homogenizedVarComputerSettings.fileName = old.vademecumFileName;
                    end
            end
        end
        
    end
    
end