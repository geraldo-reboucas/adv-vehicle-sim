function engmodel(action)

if nargin==0
   figcolor=[.4 .36 1]; %blueish
   butcolor1=[1 1 .64]; %yellow
   butcolor2=[1 .5 .5]; %coral
   butcolor3=[.34 .67 .67]; %greenish
   butcolor4=[.85 .85 .85]; %grey
   
   dy=10;
   
   % figure and title
   h0 = figure('Color',figcolor, ...
      'MenuBar','none', ...
      'Name','Engine Modeling Program', ...
      'NumberTitle','off', ...
      'Position',[338 507 448 189], ...
      'ToolBar','none');
   h1 = uicontrol('Parent',h0, ...
      'BackgroundColor',figcolor, ...
      'FontSize',14, ...
      'FontWeight','bold', ...
      'Position',[87 146 273 30], ...
      'String','Engine Modeling Program',...
      'Style','text');
   
   %Read in data file
   h1 = uicontrol('Parent',h0, ...
      'BackgroundColor',butcolor1, ...
      'Callback','data_file_read', ...
      'Position',[15 61+dy 125 33], ...
      'String','Read in text file');
   
   %Set parameters and process
   h1 = uicontrol('Parent',h0, ...
      'BackgroundColor',butcolor2, ...
      'Callback','engmodel(''process'')', ...
      'Position',[155 61+dy 125 33], ...
      'String','Set Parameters/Process');
   
   %create ADVISOR file
   h1 = uicontrol('Parent',h0, ...
      'BackgroundColor',butcolor3, ...
      'Callback','engmodel(''ADVISOR file'')', ...
      'Position',[295 61+dy 125 33], ...
      'String','Create ADVISOR File');
   
   %Exit, Save, Load
   h1 = uicontrol('Parent',h0, ...
      'BackgroundColor',butcolor4, ...
      'Callback','engmodel(''load'')', ...
      'Position',[330 12 48 24], ...
      'String','Load');
   h1 = uicontrol('Parent',h0, ...
      'BackgroundColor',butcolor4, ...
      'Callback','web(which(''engmodel_doc.html''), ''-browser'');', ...
      'Position',[275 12 48 24], ...
      'String','Help');
   h1 = uicontrol('Parent',h0, ...
      'BackgroundColor',butcolor4, ...
      'Callback','engmodel(''exit'')', ...
      'Position',[385 12 48 24], ...
      'String','Exit');
   
   % Set figure to normalized for proper resizing
   h=findobj('type','uicontrol');
   g=findobj('type','axes');
   
   set([h; g],'units','normalized')
end

if nargin > 0
   
   global einf	%engine information
   
   switch action
   case 'process'
      eng_params_process;
   case 'ADVISOR file'
      make_ADV_eng_file;
   case 'load'
      %load einf mat file
      [f p]=uigetfile('*.mat','Existing engine file');
      if f==0
         return
      end
      evalin('base','clear einf');
      evalin('base',['load ''' p f '''']);
      einf.filename=f;
      einf.path=p;
   case 'save'
      evalin('base','global einf;');
      %save einf to mat file
      [f p]=uiputfile('*.mat','Save to file');
      if f==0
         return
      end
      einf.path=p;
      einf.filename=f;
      evalin('base',['save ''' p f ''' einf']);
   case 'exit'
      close(gcbf);
   end
end

%Revision history
%12/16/99: vhj created from batmodel