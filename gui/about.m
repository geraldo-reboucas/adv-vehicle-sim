%this file displays a modified startup figure for advisor.

open advisor.fig; %load the advisor figure

%adjust the figure appropriately
[ver,date]=advisor_ver('info');
set(findobj('tag','advisor_figure'),'Name',[ver ' ' date])

%change things that should be different from startup screen

%remove unnecessary buttons
delete(findobj(gcf, 'string','Start'))
delete(findobj(gcf, 'string','Units:'))
delete(findobj(gcf, 'string','US'))
delete(findobj(gcf, 'string','Metric'))
delete(findobj(gcf, 'tag','Profile_Popup'))
delete(findobj(gcf, 'tag','Load_Results'))

%change the exit button to an ok button
set(findobj(gcf, 'string','Exit'),'string','O.K.','callback','close(gcbf)')


%Don't allow users to do anything in matlab until window is closed
set(findobj('tag','advisor_figure'),'windowstyle','modal')

%version and date
h0=findobj('tag','advisor_figure');

h1 = uicontrol('Parent',h0, ...
   'Units','normalized', ...
   'Style','text',...
   'BackgroundColor',[0 0 0], ...
   'FontSize',14, ...
   'fontweight','bold',...
	'ForegroundColor',[ 0 1 0.25 ], ...
   'HorizontalAlignment','right', ...
   'Position',[ 0.69 0.93 0.23 0.05 ], ...
   'String',ver);

%string
h1=uicontrol('Parent',h0,...
   'Units','normalized',...
   'fontsize',14,...
	'style','text',...
   'string','Developed by the National Renewable Energy Laboratory',...
   'foregroundcolor',[ 0.02 0.75 0.97 ], ...
   'backgroundcolor',[0 0 0], ...
   'position',[ 0.65 0.74 0.34 0.17 ]);

%email and website

h1=uicontrol('Parent',h0,...
   'Units','normalized',...
   'fontsize',12,...
   'style','pushbutton',...
   'string','advisor@nrel.gov',...
   'callback','web mailto:advisor@nrel.gov',...
	'foregroundcolor',[ 0.02 0.75 0.97 ], ...
   'backgroundcolor',[0 0 0], ...
   'position',[ 0.48 0.0615 0.28 0.044 ]);
h1=uicontrol('Parent',h0,...
   'Units','normalized',...
   'fontsize',12,...
	'style','pushbutton',...
   'string','www.ctts.nrel.gov/analysis',...
   'callback','web(''http://www.ctts.nrel.gov/analysis'' , ''-browser'');',...
   'foregroundcolor',[ 0.02 0.75 0.97 ], ...
   'backgroundcolor',[0 0 0], ...
   'position',[ 0.48 0.0147 0.28 0.044 ]);

%set everything normalized and set the figure size and center it

h=findobj('type','uicontrol');
g=findobj('type','axes');

set([h;g],'units','normalized')
screensize=get(0,'screensize');
im_width=640;%this is the width of the image
im_height=474;
left=screensize(3)/2-im_width/2;
bottom=screensize(4)/2-im_height/2;
set(gcf,'position',[left bottom im_width im_height]);%


%set the figure back on after everything is drawn
set(gcf,'visible','on');

adv_dir=strrep(which('advisor'),'\advisor.m','');
imagedata = imread([adv_dir '\gui_graphics\Splash_Screen_car.jpg']);
h=image(imagedata);
set(h,'ButtonDownFcn','advisor(''play_movie'')');
 
advisor('play_movie')






% 7/21/00 ss: updated call to advisor_ver
% 7/13/01 ss: revamped almost entirely to use the startup screen graphic
% 7/19/01 ss: added email and web address