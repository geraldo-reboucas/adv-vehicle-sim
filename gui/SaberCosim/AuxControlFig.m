function fig = AuxControlFig()
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

load AuxControlFig

h0 = figure('Color',[0.4 0.701960784313725 1], ...
	'Colormap',mat0, ...
	'FileName','C:\ADVISOR_changes\ADVISOR\gui\SaberCosim\AuxControlFig.m', ...
	'MenuBar','none', ...
	'Name','Auxiliary Load Control', ...
	'NextPlot','replace', ...
	'NumberTitle','off', ...
	'PaperPosition',[18 180 576 432], ...
	'PaperUnits','points', ...
	'Position',[495 208 510 591], ...
	'Tag','AuxControlFig', ...
	'ToolBar','none', ...
	'Visible','off', ...
	'DefaultaxesColorOrder',mat1);
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[0 0 0], ...
	'Callback','AuxControlFigControl(', ...
	'ListboxTop',0, ...
	'Position',[247.5 18.75 116.25 56.25], ...
	'Style','frame', ...
	'Tag','Frame1');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[0.4 0.701960784313725 1], ...
	'Callback','AuxControlFigControl(''ToggleOnOff'');', ...
	'FontSize',12, ...
	'ListboxTop',0, ...
	'Position',[22.5 172.5 90 15], ...
	'String','Toggle On/Off', ...
	'Style','radiobutton', ...
	'Tag','ToggleOnOff', ...
	'Value',1);
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[0.4 0.701960784313725 1], ...
	'Callback','AuxControlFigControl(''RegularCycles'');', ...
	'FontSize',12, ...
	'ListboxTop',0, ...
	'Position',[22.5 90 90 15], ...
	'String','Regular Intervals', ...
	'Style','radiobutton', ...
	'Tag','RegularCycles', ...
	'Value',1);
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[0.4 0.701960784313725 1], ...
	'Callback','AuxControlFigControl(''ToggleTimes'');', ...
	'FontSize',12, ...
	'ListboxTop',0, ...
	'Position',[45 150 71.25 15], ...
	'String','Initially On', ...
	'Style','checkbox', ...
	'Tag','InitiallyOn');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[0.4 0.701960784313725 1], ...
	'Callback','AuxControlFigControl(''', ...
	'FontSize',12, ...
	'HorizontalAlignment','left', ...
	'ListboxTop',0, ...
	'Position',[45 45 90 15], ...
	'String','Period (s): ', ...
	'Style','text', ...
	'Tag','RegularIntervalsText');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[1 1 1], ...
	'Callback','AuxControlFigControl(''OnFrequency'');', ...
	'FontSize',12, ...
	'ListboxTop',0, ...
	'Position',[142.5 45 60 15], ...
	'Style','edit', ...
	'Tag','OnFrequency');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[0.4 0.701960784313725 1], ...
	'Callback','AuxControlFigControl(', ...
	'FontSize',12, ...
	'HorizontalAlignment','left', ...
	'ListboxTop',0, ...
	'Position',[45 22.5 90 15], ...
	'String','Duration On (s):', ...
	'Style','text', ...
	'Tag','RegularIntervalsText');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[0.752941176470588 0.752941176470588 0.752941176470588], ...
	'Callback','AuxControlFigControl(''Back'');', ...
	'FontWeight','bold', ...
	'ListboxTop',0, ...
	'Position',[251.25 22.5 52.5 22.5], ...
	'String','Back', ...
	'Tag','Back');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[0.752941176470588 0.752941176470588 0.752941176470588], ...
	'Callback','AuxControlFigControl(''Cancel'');', ...
	'FontWeight','bold', ...
	'ListboxTop',0, ...
	'Position',[251.25 48.75 52.5 22.5], ...
	'String','Cancel', ...
	'Tag','Cancel');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[0.752941176470588 0.752941176470588 0.752941176470588], ...
	'Callback','AuxControlFigControl(''Help'');', ...
	'FontWeight','bold', ...
	'ListboxTop',0, ...
	'Position',[307.5 48.75 52.5 22.5], ...
	'String','Help', ...
	'Tag','Help');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[0.752941176470588 0.752941176470588 0.752941176470588], ...
	'Callback','AuxControlFigControl(''Done'');', ...
	'FontWeight','bold', ...
	'ListboxTop',0, ...
	'Position',[307.5 22.5 52.5 22.5], ...
	'String','Done', ...
	'Tag','Done');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[0.4 0.701960784313725 1], ...
	'FontSize',10, ...
	'FontWeight','bold', ...
	'HorizontalAlignment','left', ...
	'ListboxTop',0, ...
	'Position',[22.5 195 157.5 15], ...
	'String','On/Off Definition', ...
	'Style','text', ...
	'Tag','StaticText1');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[0.752941176470588 0.752941176470588 0.752941176470588], ...
	'ListboxTop',0, ...
	'Position',[15 198 352.5 0.75], ...
	'Style','frame', ...
	'Tag','Frame2');
h1 = axes('Parent',h0, ...
	'Units','pixels', ...
	'CameraUpVector',[0 1 0], ...
	'CameraUpVectorMode','manual', ...
	'Color',[1 1 1], ...
	'ColorOrder',mat2, ...
	'Position',[61 321 420 230], ...
	'Tag','AuxControlAxes', ...
	'XColor',[0 0 0], ...
	'YColor',[0 0 0], ...
	'ZColor',[0 0 0]);
h2 = text('Parent',h1, ...
	'Color',[0 0 0], ...
	'HandleVisibility','off', ...
	'HorizontalAlignment','center', ...
	'Position',mat3, ...
	'Tag','Axes1Text4', ...
	'VerticalAlignment','cap');
set(get(h2,'Parent'),'XLabel',h2);
h2 = text('Parent',h1, ...
	'Color',[0 0 0], ...
	'HandleVisibility','off', ...
	'HorizontalAlignment','center', ...
	'Position',[-0.06921241050119331 0.4934497816593887 9.160254037844386], ...
	'Rotation',90, ...
	'Tag','Axes1Text3', ...
	'VerticalAlignment','baseline');
set(get(h2,'Parent'),'YLabel',h2);
h2 = text('Parent',h1, ...
	'Color',[0 0 0], ...
	'HandleVisibility','off', ...
	'HorizontalAlignment','right', ...
	'Position',mat4, ...
	'Tag','Axes1Text2', ...
	'Visible','off');
set(get(h2,'Parent'),'ZLabel',h2);
h2 = text('Parent',h1, ...
	'Color',[0 0 0], ...
	'HandleVisibility','off', ...
	'HorizontalAlignment','center', ...
	'Position',mat5, ...
	'Tag','Axes1Text1', ...
	'VerticalAlignment','bottom');
set(get(h2,'Parent'),'Title',h2);
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[1 1 1], ...
	'Callback','AuxControlFigControl(''DurationOn'');', ...
	'FontSize',12, ...
	'ListboxTop',0, ...
	'Position',[142.5 22.5 60 15], ...
	'Style','edit', ...
	'Tag','DurationOn');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[0.4 0.701960784313725 1], ...
	'Callback','AuxControlFigControl(', ...
	'FontSize',12, ...
	'HorizontalAlignment','left', ...
	'ListboxTop',0, ...
	'Position',[45 127.5 90 15], ...
	'String','Toggle Times:  ', ...
	'Style','text', ...
	'Tag','ToggleOnOffText');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[1 1 1], ...
	'Callback','AuxControlFigControl(''ToggleTimes'');', ...
	'FontSize',12, ...
	'ListboxTop',0, ...
	'Position',[142.5 127.5 217.5 15], ...
	'Style','edit', ...
	'Tag','ToggleTimes');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[0.4 0.701960784313725 1], ...
	'Callback','AuxControlFigControl(''', ...
	'FontSize',12, ...
	'HorizontalAlignment','left', ...
	'ListboxTop',0, ...
	'Position',[45 67.5 90 15], ...
	'String','Start Time:', ...
	'Style','text', ...
	'Tag','RegularIntervalsText');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[1 1 1], ...
	'Callback','AuxControlFigControl(''StartTime'');', ...
	'FontSize',12, ...
	'ListboxTop',0, ...
	'Position',[142.5 67.5 60 15], ...
	'Style','edit', ...
	'Tag','StartTime');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[1 1 1], ...
	'ListboxTop',0, ...
	'Position',[228.75 378.75 127.5 30], ...
	'Style','frame', ...
	'Tag','Frame4');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[1 1 1], ...
	'HorizontalAlignment','left', ...
	'ListboxTop',0, ...
	'Position',[258.75 393.75 93.75 11.25], ...
	'String','Load On/Off', ...
	'Style','text', ...
	'Tag','StaticText2');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[1 1 1], ...
	'HorizontalAlignment','left', ...
	'ListboxTop',0, ...
	'Position',[258.75 382.5 93.75 11.25], ...
	'String','Normalized Cycle Speed', ...
	'Style','text', ...
	'Tag','StaticText2');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[0 0 1], ...
	'ForegroundColor',[0 0 1], ...
	'ListboxTop',0, ...
	'Position',[236.25 399 18.75 1], ...
	'Style','frame', ...
	'Tag','Frame3');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[0.901960784313726 0.901960784313726 0.901960784313726], ...
	'ForegroundColor',[0.901960784313726 0.901960784313726 0.901960784313726], ...
	'ListboxTop',0, ...
	'Position',[236.25 388 18.75 0.75], ...
	'Style','frame', ...
	'Tag','Frame3');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[0.4 0.701960784313725 1], ...
	'Callback','AuxControlFigControl(', ...
	'FontSize',12, ...
	'HorizontalAlignment','left', ...
	'ListboxTop',0, ...
	'Position',[142.5 112.5 217.5 15], ...
	'String','(Example:  "200,500,700" or "200 500 700")', ...
	'Style','text', ...
	'Tag','ToggleOnOffText');
if nargout > 0, fig = h0; end
