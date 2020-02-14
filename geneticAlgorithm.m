c = [59.85 ;43.05 ;53.55 ;26.25 ;44.1 ;64.05 ;36.75 ;35.7 ;13.65 ;21 ;54.6 ;63 ;33.6 ;54.6 ;46.2 ;31.5];
gaoptions = optimoptions('ga','PlotFcn',{@gaplotbestf},'InitialPopulationRange',[0;40],'PopulationSize',200,'MaxGenerations',50,'MaxStallGenerations',inf,'FunctionTolerance',0);
[x, fval, ~, ~, population]=ga(@(x)fitnessFunction(x,100), 16, [], [], [], [], zeros(16, 1), c , [], gaoptions);
