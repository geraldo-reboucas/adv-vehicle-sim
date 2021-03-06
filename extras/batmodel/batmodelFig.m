function fig = batmodelFig()
% This is the machine-generated representation of a Handle Graphics object
% and its children.  Note that handle values may change when these objects
% are re-created. This may cause problems with any callbacks written to
% depend on the value of the handle at the time the object was saved.
% This problem is solved by saving the output as a FIG-file.
%
% To reopen this object, just type the name of the M-file at the MATLAB
% prompt. The M-file and its associated MAT-file must be on your path.
% 
% NOTE: certain newer features in MATLAB may not have been saved in this
% M-file due to limitations of this format, which has been superseded by
% FIG-files.  Figures which have been annotated using the plot editor tools
% are incompatible with the M-file/MAT-file format, and should be saved as
% FIG-files.

load batmodelFig

h0 = figure('Color',[0.4 0.36 1], ...
	'Colormap',mat0, ...
	'FileName','D:\Val\advisor_revisions\Advisor\extras\batmodel\batmodelFig.m', ...
	'MenuBar','none', ...
	'Name','Batmodel: A Battery Modeling Program', ...
	'NumberTitle','off', ...
	'PaperPosition',[18 180 576 432], ...
	'PaperUnits','points', ...
	'Position',[599 84 504 488], ...
	'Tag','Fig6', ...
	'ToolBar','none');
h1 = uicontrol('Parent',h0, ...
	'Units','normalized', ...
	'BackgroundColor',[0.4 0.36 1], ...
	'FontSize',10, ...
	'FontWeight','bold', ...
	'ListboxTop',0, ...
	'Position',mat1, ...
	'String','Batmodel 2: A Battery Modeling Program by NREL', ...
	'Style','text', ...
	'Tag','StaticText3');
h1 = uicontrol('Parent',h0, ...
	'Units','normalized', ...
	'BackgroundColor',[0.4 0.36 1], ...
	'Callback','batmodelControl(''Bitrode'')', ...
	'ListboxTop',0, ...
	'Position',[0.04166666666666666 0.875 0.2817460317460317 0.04098360655737705], ...
	'String','Quotes around headers?', ...
	'Style','checkbox', ...
	'Tag','bitrode box', ...
	'Value',1);
h1 = uicontrol('Parent',h0, ...
	'Units','normalized', ...
	'BackgroundColor',[0.4 0.36 1], ...
	'HorizontalAlignment','left', ...
	'ListboxTop',0, ...
	'Position',[0.0873015873015873 0.4016393442622951 0.1984126984126984 0.04098360655737705], ...
	'String','Processing', ...
	'Style','text', ...
	'Tag','StaticText2');
h1 = uicontrol('Parent',h0, ...
	'Units','normalized', ...
	'BackgroundColor',[0.4 0.36 1], ...
	'HorizontalAlignment','left', ...
	'ListboxTop',0, ...
	'Position',[0.242063492063492 0.4016393442622951 0.1984126984126984 0.04098360655737705], ...
	'String','Results', ...
	'Style','text', ...
	'Tag','StaticText1');
h1 = uicontrol('Parent',h0, ...
	'Units','normalized', ...
	'BackgroundColor',[1 1 0.64], ...
	'Callback','batmodelControl(''peukert'')', ...
	'ListboxTop',0, ...
	'Position',[0.03373015873015873 0.3463114754098361 0.1984126984126984 0.06147540983606558], ...
	'String','Capacity)', ...
	'Tag','Pushbutton14');
h1 = uicontrol('Parent',h0, ...
	'Units','normalized', ...
	'BackgroundColor',[1 1 0.64], ...
	'Callback','batmodelControl(''peukert results'')', ...
	'ListboxTop',0, ...
	'Position',[0.2361111111111111 0.3463114754098361 0.08928571428571427 0.06147540983606558], ...
	'String','Cap Res', ...
	'Tag','Pushbutton13');
h1 = uicontrol('Parent',h0, ...
	'Units','normalized', ...
	'BackgroundColor',[1 1 0.64], ...
	'Callback','batmodelControl(''VOC'')', ...
	'ListboxTop',0, ...
	'Position',[0.03373015873015873 0.264344262295082 0.1984126984126984 0.06147540983606558], ...
	'String','VOC vs. SOC', ...
	'Tag','Pushbutton12');
h1 = uicontrol('Parent',h0, ...
	'Units','normalized', ...
	'BackgroundColor',[1 1 0.64], ...
	'Callback','batmodelControl(''VOC results'')', ...
	'ListboxTop',0, ...
	'Position',[0.2361111111111111 0.264344262295082 0.08928571428571427 0.06147540983606558], ...
	'String','Voc Res', ...
	'Tag','Pushbutton11');
h1 = uicontrol('Parent',h0, ...
	'Units','normalized', ...
	'BackgroundColor',[1 1 0.64], ...
	'Callback','batmodelControl(''Rint'')', ...
	'ListboxTop',0, ...
	'Position',[0.03373015873015873 0.1823770491803279 0.1984126984126984 0.06147540983606558], ...
	'String','Internal Resistance', ...
	'Tag','Pushbutton10');
h1 = uicontrol('Parent',h0, ...
	'Units','normalized', ...
	'BackgroundColor',[1 1 0.64], ...
	'Callback','batmodelControl(''Rint results'')', ...
	'ListboxTop',0, ...
	'Position',[0.2361111111111111 0.1823770491803279 0.08928571428571427 0.06147540983606558], ...
	'String','Rint Res', ...
	'Tag','Pushbutton9');
h1 = uicontrol('Parent',h0, ...
	'Units','normalized', ...
	'BackgroundColor',[1 0.5 0.5], ...
	'Callback','batmodelControl(''plot T variation'')', ...
	'ListboxTop',0, ...
	'Position',[0.4027777777777777 0.3299180327868853 0.1984126984126984 0.06147540983606558], ...
	'String','Results vs. Temp', ...
	'Tag','Pushbutton8');
h1 = uicontrol('Parent',h0, ...
	'Units','normalized', ...
	'BackgroundColor',[1 0.5 0.5], ...
	'Callback','batmodelControl(''ADVISOR model'')', ...
	'ListboxTop',0, ...
	'Position',mat2, ...
	'String','Create Rint model file', ...
	'Tag','Pushbutton7');
h1 = uicontrol('Parent',h0, ...
	'Units','normalized', ...
	'BackgroundColor',[0.34 0.67 0.67], ...
	'Callback','batmodelControl(''validate'')', ...
	'ListboxTop',0, ...
	'Position',[0.7341269841269841 0.6577868852459017 0.1944444444444444 0.05737704918032787], ...
	'String','Validate Model', ...
	'Tag','Pushbutton6');
h1 = uicontrol('Parent',h0, ...
	'Units','normalized', ...
	'BackgroundColor',[0.4 0.36 1], ...
	'FontSize',10, ...
	'FontWeight','bold', ...
	'HorizontalAlignment','left', ...
	'ListboxTop',0, ...
	'Position',[0.03174603174603174 0.8135245901639344 0.4027777777777777 0.04918032786885246], ...
	'String','RC Model Processing', ...
	'Style','text', ...
	'Tag','StaticText3');
h1 = uicontrol('Parent',h0, ...
	'Units','normalized', ...
	'BackgroundColor',[0.4 0.36 1], ...
	'FontSize',10, ...
	'FontWeight','bold', ...
	'HorizontalAlignment','left', ...
	'ListboxTop',0, ...
	'Position',[0.03174603174603174 0.4405737704918033 0.876984126984127 0.04918032786885246], ...
	'String','Internal Resistance - OCV Processing (Prior to 3/01)', ...
	'Style','text', ...
	'Tag','StaticText3');
h1 = uicontrol('Parent',h0, ...
	'Units','normalized', ...
	'BackgroundColor',[0 0 0], ...
	'ListboxTop',0, ...
	'Position',[0.6408730158730158 0.03073770491803279 0.3273809523809524 0.1352459016393443], ...
	'Style','frame', ...
	'Tag','Frame1');
h1 = uicontrol('Parent',h0, ...
	'Units','normalized', ...
	'BackgroundColor',[1 0.5 0.5], ...
	'Callback','batmodelControl(''ADVISOR RC model'')', ...
	'ListboxTop',0, ...
	'Position',[0.4027777777777777 0.6024590163934427 0.2817460317460317 0.06762295081967214], ...
	'String','Create RC model file', ...
	'Tag','Pushbutton7');
h1 = uicontrol('Parent',h0, ...
	'Units','normalized', ...
	'BackgroundColor',[1 0.5 0.5], ...
	'Callback','batmodelControl(''plot T variation'')', ...
	'ListboxTop',0, ...
	'Position',mat3, ...
	'String','RC Results vs. Temp', ...
	'Tag','Pushbutton8');
h1 = uicontrol('Parent',h0, ...
	'Units','normalized', ...
	'BackgroundColor',[1 1 0.64], ...
	'Callback','batmodelControl(''RC results'')', ...
	'ListboxTop',0, ...
	'Position',[0.2757936507936508 0.6024590163934427 0.08928571428571427 0.06147540983606558], ...
	'String','RC Res', ...
	'Tag','Pushbutton9');
h1 = uicontrol('Parent',h0, ...
	'Units','normalized', ...
	'BackgroundColor',[1 1 0.64], ...
	'Callback','batmodelControl(''RC'')', ...
	'ListboxTop',0, ...
	'Position',[0.07142857142857143 0.6024590163934427 0.1984126984126984 0.06147540983606558], ...
	'String','R and C Params', ...
	'Tag','Pushbutton10');
h1 = uicontrol('Parent',h0, ...
	'Units','normalized', ...
	'BackgroundColor',[1 1 0.64], ...
	'Callback','batmodelControl(''VOC results'')', ...
	'ListboxTop',0, ...
	'Position',[0.2757936507936508 0.6844262295081968 0.08928571428571427 0.06147540983606558], ...
	'String','Voc Res', ...
	'Tag','Pushbutton11');
h1 = uicontrol('Parent',h0, ...
	'Units','normalized', ...
	'BackgroundColor',[1 1 0.64], ...
	'Callback','batmodelControl(''VOC'')', ...
	'ListboxTop',0, ...
	'Position',[0.0734126984126984 0.6844262295081968 0.1984126984126984 0.06147540983606558], ...
	'String','VOC vs. SOC', ...
	'Tag','Pushbutton12');
h1 = uicontrol('Parent',h0, ...
	'Units','normalized', ...
	'BackgroundColor',[0.4 0.36 1], ...
	'HorizontalAlignment','left', ...
	'ListboxTop',0, ...
	'Position',[0.09523809523809523 0.7561475409836066 0.1984126984126984 0.04098360655737705], ...
	'String','Processing', ...
	'Style','text', ...
	'Tag','StaticText2');
h1 = uicontrol('Parent',h0, ...
	'Units','normalized', ...
	'BackgroundColor',[0.4 0.36 1], ...
	'HorizontalAlignment','left', ...
	'ListboxTop',0, ...
	'Position',mat4, ...
	'String','Results', ...
	'Style','text', ...
	'Tag','StaticText1');
h1 = uicontrol('Parent',h0, ...
	'Units','normalized', ...
	'BackgroundColor',[0.85 0.85 0.85], ...
	'Callback','batmodelControl(''exit'')', ...
	'ListboxTop',0, ...
	'Position',[0.865079365079365 0.04098360655737705 0.09523809523809523 0.04918032786885246], ...
	'String','Exit', ...
	'Tag','Pushbutton1');
h1 = uicontrol('Parent',h0, ...
	'Units','normalized', ...
	'BackgroundColor',[0.85 0.85 0.85], ...
	'Callback','batmodelControl(''save'')', ...
	'ListboxTop',0, ...
	'Position',[0.7559523809523809 0.04098360655737705 0.09523809523809523 0.04918032786885246], ...
	'String','Save', ...
	'Tag','Pushbutton2');
h1 = uicontrol('Parent',h0, ...
	'Units','normalized', ...
	'BackgroundColor',[0.85 0.85 0.85], ...
	'Callback','batmodelControl(''load'')', ...
	'ListboxTop',0, ...
	'Position',[0.6468253968253968 0.04098360655737705 0.09523809523809523 0.04918032786885246], ...
	'String','Load', ...
	'Tag','Pushbutton3');
h1 = uicontrol('Parent',h0, ...
	'Units','normalized', ...
	'BackgroundColor',[0.85 0.85 0.85], ...
	'Callback','load_in_browser(''batmodel_doc.html'');', ...
	'ListboxTop',0, ...
	'Position',mat5, ...
	'String','Help', ...
	'Tag','Pushbutton4');
h1 = uicontrol('Parent',h0, ...
	'Units','normalized', ...
	'BackgroundColor',[0.85 0.85 0.85], ...
	'Callback','batmodelControl(''change path'')', ...
	'ListboxTop',0, ...
	'Position',mat6, ...
	'String','Chg Path', ...
	'Tag','Pushbutton5');
if nargout > 0, fig = h0; end
