function fig = parametric_gui(option)

% This runs the gui for the parametric results

global vinf;
mainframecolor=[.4 .7 1];
color3D=[.7 1 1];

if nargin==0
   
   h0 = figure('Color',[1 1 1], ...
      'Name',['Parametric Results--',advisor_ver('info')], ...
      'NumberTitle','off', ...
      'Position',[103 117 768 575], ...
      'MenuBar','none',...
      'Tag','parametric_results_figure',...
      'visible','off');
   
   %set up the menubar
	adv_menu('parametric');

   %Frames
   %big frame (blue)
   h1 = uicontrol('Parent',h0, ...	
      'BackgroundColor',mainframecolor, ...
      'Position',[593 1 177 575], ...
      'Style','frame');
   %3d control frame
   h1 = uicontrol('Parent',h0, ...
      'BackgroundColor',[0.7 1 1], ...
      'Position',[600 243 166 218], ...
      'Style','frame');
   %title
   h1 = uicontrol('Parent',h0, ...
      'BackgroundColor',mainframecolor, ...
      'FontSize',14, ...
      'FontWeight','bold', ...
      'Position',[597 502 158 70], ...
      'String','Parametric Results', ...
      'Style','text');
   h1 = uicontrol('Parent',h0, ...
      'BackgroundColor',[0 0 0], ...
      'Position',[613 520 131 4], ...
      'Style','frame');
   
   %Exit,Help,Save,Back(2)
   h1 = uicontrol('Parent',h0, ...
      'BackgroundColor',[0 0 0], ...
      'Position',[606 9 156 107], ...
      'Style','frame');
   h1 = uicontrol('Parent',h0, ...
      'Callback','close(gcbf)', ...
      'Style','pushbutton',...
      'Position',[688 14 68 28], ...
      'String','Exit',...
      'Tag','pushbutton_exit');
   h1 = uicontrol('Parent',h0, ...
      'Callback','web(which(''advisor_doc.html''), ''-browser'');', ...
      'Position',[688 48 68 28], ...
      'String','Help');
   h1 = uicontrol('Parent',h0, ...
      'Callback','gui_save_parametric;', ...
      'Position',[651 82 68 28], ...
      'String','Save');
   h1 = uicontrol('Parent',h0, ...
      'Callback',['close(gcbf);parametric_gui(''going back'');SimSetupFig;'], ...
      'Position',[614 14 68 28], ...
      'String','Back');
   h1 = uicontrol('Parent',h0, ...
      'Callback',['close(gcbf);parametric_gui(''going back'');InputFig'], ...
      'Position',[614 48 68 28], ...
      'String','Back Two');
   
   %Variable Section
   h1 = uicontrol('Parent',h0, ...
      'BackgroundColor',mainframecolor, ...
      'Position',[603 488 45 22], ...
      'String','Variable', ...
      'Style','text');
   if strcmp(vinf.units,'metric')
      str={'Litersp100km';'LpkmGE';'DeltaSOC';'NOx_gpkm';'CO_gpkm';'HC_gpkm';'PM_gpkm';...
            'Accel_0_97';'Accel_64_97';'Accel_0_137';'Meters_5sec';...
            'Max_accel_m_s2';['Grade_',num2str(round(vinf.gradeability.speed/0.62137)),'kph'];};
   else
      str={'MilesPG';'MPGGE';'DeltaSOC';'NOx';'CO';'HC';'PM';...
            'Accel_0_60';'Accel_40_60';'Accel_0_85';'Feet_5sec';...
            'Max_accel_ft_s2';['Grade_',num2str(vinf.gradeability.speed),'mph'];};
   end
   h1 = uicontrol('Parent',h0, ...
      'Callback','if (get(findobj(''tag'',''plot_slices''),''value'')==1 & vinf.parametric.number_variables==3),parametric_plot(''slice'');else parametric_plot;end', ...
      'Position',[605 470 121 21], ...
      'String',str, ...
      'Style','popupmenu', ...
      'Tag','parametric_plot_menu', ...
      'Value',1);
   
   %3D Plots
   h1 = uicontrol('Parent',h0, ...
      'BackgroundColor',color3D, ...
      'Position',[605 434 50 22], ...
      'String','3D Plots', ...
      'Style','text');
   h1 = uicontrol('Parent',h0, ...
      'Callback','rotate3d', ...
      'Position',[610 415 59 21], ...
      'String','Rotate');
   
   %Graph Section
   h1 = axes('Parent',h0, ...
      'Box','on', ...
      'Color',[1 1 1], ...
      'ColorOrder', [ 0         0    1.0000
      0    0.5000         0
      1.0000         0         0
      0    0.7500    0.7500
      0.7500         0    0.7500
      0.7500    0.7500         0
      0.2500    0.2500    0.2500], ...
      'NextPlot','replacechildren', ...
      'Position',[0.1    0.18    0.57    0.7], ...
      'Tag','parametric_axes', ...
      'XColor',[0 0 0], ...
      'YColor',[0 0 0], ...
      'ZColor',[0 0 0]);
   
   
   %Slice Plots
   h1 = uicontrol('Parent',h0, ...
      'Callback','if (get(findobj(''tag'',''plot_slices''),''value'')==1 & vinf.parametric.number_variables==3),parametric_gui(''slice'');parametric_gui(''slice_values''); parametric_plot(''slice'');else parametric_gui(''slice''); parametric_plot;end',...
      'BackgroundColor',color3D, ...
      'Position',[609 385 155 21], ...
      'String','Plot Slice - 3 Variables Only', ...
      'Style','checkbox', ...
      'Tag','plot_slices');
   
   j=findobj('Tag','plot_slices');	%Disable the plot slices if <3 variables
   if vinf.parametric.number_variables~=3
      set(j,'enable','off');
   end
   %Display x value of slice
   h1 = uicontrol('Parent',h0, ...
      'BackgroundColor',color3D, ...
      'Position',[622 365 63 19], ...
      'String','X Value', ...
      'Style','text',...
      'UserData','slice2');
   if vinf.parametric.number_variables>1
      xvalue=get(findobj('tag','X_value'),'value')*(vinf.parametric.high(2)-vinf.parametric.low(2))+vinf.parametric.low(2);
   else
      xvalue=0;   
   end;
   h1 = uicontrol('Parent',h0,...
      'BackgroundColor',[1 1 1],...
      'Position',[685 367 40 19],...
      'Style','text',...
      'Value',xvalue,...
      'String',xvalue,...
      'UserData','slice2',...
      'Tag','xvalue');
   %display y value of slice
   h1 = uicontrol('Parent',h0, ...
      'BackgroundColor',color3D, ...
      'Position',[622 318 63 19], ...
      'String','Y Value', ...
      'Style','text',...
      'UserData','slice2');
   yvalue=get(findobj('tag','Y_value'),'value')*(vinf.parametric.high(1)-vinf.parametric.low(1))+vinf.parametric.low(1);
   h1 = uicontrol('Parent',h0,...
      'BackgroundColor',[1 1 1],...
      'Position',[685 320 40 19],...
      'Style','text',...
      'Value',yvalue,...
      'String',yvalue,...
      'UserData','slice2',...
      'Tag','yvalue');
   %display z value of slice
   h1 = uicontrol('Parent',h0, ...
      'BackgroundColor',color3D, ...
      'Position',[622 271 63 19], ...
      'String','Z Value', ...
      'Style','text',...
      'UserData','slice2');
   if vinf.parametric.number_variables==3
      zvalue=get(findobj('tag','Z_value'),'value')*(vinf.parametric.high(3)-vinf.parametric.low(3))+vinf.parametric.low(3);
   else
      zvalue=0;   
   end;
   h1 = uicontrol('Parent',h0,...
      'BackgroundColor',[1 1 1],...
      'Position',[685 273 40 19],...
      'Style','text',...
      'Value',zvalue,...
      'String',zvalue,...
      'UserData','slice2',...
      'Tag','zvalue');
   
   %Sliders
   h1 = uicontrol('Parent',h0, ...
      'Callback','parametric_plot(''slice''); parametric_gui(''slice_values'')', ...
      'BackgroundColor',[1 1 1], ...
      'Position',[621 343 125 20], ...
      'Style','slider', ...
      'Max',1,...
      'Min',0,...
      'Tag','X_value',...
      'UserData','slice2');
   h1 = uicontrol('Parent',h0, ...
      'Callback','parametric_plot(''slice''); parametric_gui(''slice_values'')', ...
      'BackgroundColor',[1 1 1], ...
      'Position',[621 296 125 20], ...
      'Style','slider', ...
      'Max',1,...
      'Min',0,...
      'Tag','Y_value',...
      'UserData','slice2');
   h1 = uicontrol('Parent',h0, ...
      'Callback','parametric_plot(''slice''); parametric_gui(''slice_values'')', ...
      'BackgroundColor',[1 1 1], ...
      'Position',[621 249 125 20], ...
      'Style','slider', ...
      'Max',1,...
      'Min',0,...
      'Tag','Z_value',...
      'UserData','slice2');
   h=findobj('UserData','slice2');
   set(h,'enable','off');
   
   %Warning Box for messages
   h1 = uicontrol('Parent',h0, ...
      'BackgroundColor',[1 0 0], ...
      'Position',[600 217 115 18], ...
      'String','Warnings/Messages', ...
      'Style','text');
   h1 = uicontrol('Parent',h0, ...
      'BackgroundColor',[1 1 1], ...
      'Position',[600 140 166 75], ...
      'String',evalin('base','warnings'), ...
      'Style','listbox', ...
      'Tag','warnings_listbox', ...
      'Value',1);
   
   parametric_plot;
   
   %set everything normalized and set the figure size and center it
   h=findobj('type','uicontrol');
   g=findobj('type','axes');
   set([h; g],'units','normalized')
   eval('h=vinf.gui_size; test4exist=1;','test4exist=0;')
   if test4exist
      set(gcf,'units','pixels','position',vinf.gui_size);
   else
      screensize=get(0,'screensize'); %this should be in pixels(the default)
      if screensize(3)>=1024
         vinf.gui_size=[124 81 768 576];
         set(gcf,'units','pixels','position',vinf.gui_size);
      else
         set(gcf,'units','normalized')
         set(gcf,'position',[.03 .05 .95 .85]);
         set(gcf,'units','pixels');
      end
   end
   %set the figure back on after everything is drawn
   set(gcf,'visible','on');
   
   
end %nargin==0



if nargin > 0
   switch option
   case 'slice'
      h=findobj('UserData','slice2');
      if (get(findobj('tag','plot_slices'),'value')==1 & vinf.parametric.number_variables==3)
         set(h,'enable','on');
      else
         set(h,'enable','off');
      end %if...
   case 'slice_values'
      h=findobj('Tag','xvalue');
      value1=get(findobj('tag','X_value'),'value')*(vinf.parametric.high(2)-vinf.parametric.low(2))+vinf.parametric.low(2);
      set(h,'String',num2str(value1));
      
      i=findobj('Tag','yvalue');
      value2=get(findobj('tag','Y_value'),'value')*(vinf.parametric.high(1)-vinf.parametric.low(1))+vinf.parametric.low(1);
      set(i,'String',num2str(value2));
      
      j=findobj('Tag','zvalue');
      value3=get(findobj('tag','Z_value'),'value')*(vinf.parametric.high(3)-vinf.parametric.low(3))+vinf.parametric.low(3);
      set(j,'String',num2str(value3));
   case 'going back'
      global vinf
      %U.S
      clear MilesPG MPGGE DeltaSOC NOx CO HC PM;
      try 
         clear Accel_0_60 Accel_40_60 Accel_0_85 Feet_5sec Max_accel_ft_s2;
         eval('clear ',['Grade_',num2str(vinf.gradeability.speed),'mph']);
      end
      %Metric
      clear Litersp100km LpkmGE NOx_gpm CO_gpm HC_gpm PM_gpm;
      try 
         clear Accel_0_97 Accel_64_97 Accel_0_137 Meters_5sec Max_accel_m_s2;
         eval('clear ',['Grade_',num2str(round(vinf.gradeability.speed/0.62137)),'kph']);
      end
   end %switch,case
end %nargin>0


%REVISIONS
% 4/6/99 ss: set 'visible' to 'off' while creating and turned back 'on' when created
% 5/05/99: vhj added PM
% 6/11/99: vhj added mpgge
% 9/20/99: vhj metric units capability
% 9/22/99: vhj renormalized, fixed 'going back' with try statements
% 7/21/00 ss: updated name for version info to advisor_ver.