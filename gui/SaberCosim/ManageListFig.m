function fig = ManageListFig()
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

load ManageListFig

h0 = figure('Color',[0.4 0.701960784313725 1], ...
	'Colormap',mat0, ...
	'FileName','C:\ADVISOR_changes\ADVISOR\gui\SaberCosim\ManageListFig.m', ...
	'MenuBar','none', ...
	'Name','Manage List', ...
	'NumberTitle','off', ...
	'PaperPosition',[18 180 576 432], ...
	'PaperUnits','points', ...
	'Position',[721 380 525 239], ...
	'Tag','ManageList', ...
	'ToolBar','none', ...
	'Visible','off');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[0 0 0], ...
	'HitTest','off', ...
	'ListboxTop',0, ...
	'Position',[255 11.25 116.25 56.25], ...
	'Style','frame', ...
	'Tag','Frame1');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[1 1 1], ...
	'Position',[7.5 7.5 112.5 165], ...
	'String',' ', ...
	'Style','listbox', ...
	'Tag','ListBox', ...
	'Value',1);
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[0.8 0.8 0.8], ...
	'Callback','ManageListFigControl(''Add'')', ...
	'FontWeight','bold', ...
	'ListboxTop',0, ...
	'Position',[127.5 60 52.5 22.5], ...
	'String','Create', ...
	'Tag','Add');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[0.8 0.8 0.8], ...
	'Callback','ManageListFigControl(''Delete'')', ...
	'FontWeight','bold', ...
	'ListboxTop',0, ...
	'Position',[127.5 15 52.5 22.5], ...
	'String','Delete', ...
	'Tag','Delete');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[0.8 0.8 0.8], ...
	'Callback','ManageListFigControl(''Cancel'')', ...
	'FontWeight','bold', ...
	'ListboxTop',0, ...
	'Position',[258.75 41.25 52.5 22.5], ...
	'String','Cancel', ...
	'Tag','Cancel');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[0.8 0.8 0.8], ...
	'Callback','ManageListFigControl(''Help'')', ...
	'FontWeight','bold', ...
	'ListboxTop',0, ...
	'Position',[315 41.25 52.5 22.5], ...
	'String','Help', ...
	'Tag','Help');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[0.8 0.8 0.8], ...
	'Callback','ManageListFigControl(''Back'')', ...
	'FontWeight','bold', ...
	'ListboxTop',0, ...
	'Position',[258.75 15 52.5 22.5], ...
	'String','Back', ...
	'Tag','Back');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[0.8 0.8 0.8], ...
	'Callback','ManageListFigControl(''Done'')', ...
	'FontWeight','bold', ...
	'ListboxTop',0, ...
	'Position',[315 15 52.5 22.5], ...
	'String','Done', ...
	'Tag','Done');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[0.4 0.701960784313725 1], ...
	'FontWeight','bold', ...
	'HorizontalAlignment','left', ...
	'ListboxTop',0, ...
	'Position',[127.5 120 180 15], ...
	'String','List Storage Filename:', ...
	'Style','text', ...
	'Tag','StaticText2');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[0.4 0.701960784313725 1], ...
	'FontWeight','bold', ...
	'HorizontalAlignment','left', ...
	'ListboxTop',0, ...
	'Position',[127.5 153.75 180 15], ...
	'String','List Structure Variable Name:', ...
	'Style','text', ...
	'Tag','StaticText1');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[0.4 0.701960784313725 1], ...
	'HorizontalAlignment','left', ...
	'ListboxTop',0, ...
	'Position',[127.5 142.5 251.25 15], ...
	'String','List Structure Variable Name', ...
	'Style','text', ...
	'Tag','ListVarName');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[0.4 0.701960784313725 1], ...
	'HorizontalAlignment','left', ...
	'ListboxTop',0, ...
	'Position',[127.5 90 251.25 30], ...
	'String','List Storage Filename', ...
	'Style','text', ...
	'Tag','ListFileName');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[0.8 0.8 0.8], ...
	'Callback','ManageListFigControl(''Add'')', ...
	'FontWeight','bold', ...
	'ListboxTop',0, ...
	'Position',[127.5 37.5 52.5 22.5], ...
	'String','Edit', ...
	'Tag','Edit');
if nargout > 0, fig = h0; end
