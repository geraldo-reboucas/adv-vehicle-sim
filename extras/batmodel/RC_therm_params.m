function RC_therm_params(action,var_name)
%Get thermal/limit/mass parameters from user
%variables needed:
%ess_min_volts,ess_max_volts,ess_module_mass, ess_mod_cp,
%ess_set_tmp,ess_mod_sarea,ess_mod_airflow,ess_mod_flow_area
%ess_mod_case_thk, ess_mod_case_th_cond
type='ess';

if nargin==0
    
    figcolor=[.8 .8 1];
    dy=80;
    dx=-37;
    big_dx=325;
    
    %figure
    h0 = figure('Color',figcolor, ...
        'Name','RC thermal parameters', ...
        'NumberTitle','off', ...
        'PaperPosition',[18 30 576 432], ...
        'PaperUnits','points', ...
        'Position',[506+dx 100 652 300+dy], ...
        'ToolBar','none',...
        'Visible','off');
    h1 = uicontrol('Parent',h0, ...
        'BackgroundColor',figcolor, ...
        'FontSize',14, ...
        'FontWeight','bold', ...
        'Position',[70+dx 260+dy 342 25], ...
        'String','RC thermal parameters', ...
        'HorizontalAlignment','left',...
        'Style','text');
    
    %Load defaults?
    h1 = uicontrol('Parent',h0, ...
        'Callback','RC_therm_params(''PbA defaults'')',...
        'Position',[87+dx 225+dy 130 24], ...
        'String','Load Default Lead Acid?', ...
        'Value',0);
    h1 = uicontrol('Parent',h0, ...
       'Callback','RC_therm_params(''NiMH defaults'')',...
       'Position',[237+dx 225+dy 130 24], ...
       'String','Load Default NiMH?', ...
       'Value',0);
    h1 = uicontrol('Parent',h0, ...
       'Callback','RC_therm_params(''LI defaults'')',...
       'Position',[387+dx 225+dy 130 24], ...
       'String','Load Default Li-Ion?', ...
       'Value',0);
    
    var_input={[type '_module_mass (kg)'],[type '_min_volts'],[type '_max_volts'],[type '_module_num'],...
            [type '_mod_cp (J/kgK)'],[type '_set_tmp (C)'],[type '_mod_sarea (m^2)'],...
            [type '_mod_airflow (kg/s)'],[type '_mod_flow_area (m^2)'],[type '_mod_case_thk (m)'],...
            [type '_mod_case_th_cond (W/mK)']};
    init_str={'1','9.5','16.5','1',...
            '660','35','0.2',...
            '.07/12','.004','.002',...
            '.20'};
    dy_input=-30;
    dx_input=300;
    %create the names and edit boxes
    for i=1:length(var_input)
        h1 = uicontrol('Parent',h0, ...
            'BackgroundColor',figcolor, ...
            'HorizontalAlignment','left', ...
            'Position',[87+dx+dx_input*mod(i-1,2) 184+dy+(floor((i)/2)*dy_input-dy_input*mod(i-1,2)) 160 17],...
            'String',var_input{i}, ...
            'Style','text');
        h1 = uicontrol('Parent',h0, ...
            'BackgroundColor',[1 1 1], ...
            'Callback',['RC_therm_params(''edit'',''',var_input{i},''')'],...
            'HorizontalAlignment','left', ...
            'Position',[214+dx_input*mod(i-1,2) 184+dy+(floor((i)/2)*dy_input-dy_input*mod(i-1,2)) 110 22], ...
            'String',init_str{i}, ...
            'Style','edit', ...
            'Tag',var_input{i});

        %find index where there's a space
        var_name=var_input{i};
        for j=1:length(var_name)
            if strcmp(var_name(j),' ')
                j=j-1;
                break
            end
        end
        var_name=var_name(1:j);
        %Try to set value to the value in the workspace if it already exists
        try,
            eval(['value=evalin(''base'',''binf.RC.', var_name ,''');'])
            set(h1,'string',num2str(value));
            %disp('Value exists in binf.RC')
        end

        RC_therm_params('edit',var_input{i})
    end
    
    %Help
    h1 = uicontrol('Parent',h0, ...
        'Callback','load_in_browser(''ess_therm.html'');',...
        'Position',[430 10 80 24], ...
        'String','Help (thermal)', ...
        'Tag','load default box', ...
        'Value',0);
    
    %Continue
    h1 = uicontrol('Parent',h0, ...
        'BackgroundColor',[1 0.5 0.25], ...
        'Callback','RC_therm_params(''continue'')', ...
        'Position',[520 10 110 24], ...
        'String','Continue');
    
    % Set figure to normalized for proper resizing
    h=findobj('type','uicontrol');
    set(gcf,'visible','on');
    %_______set the figure size and location
    screensize=get(0,'screensize'); %this should be in pixels(the default)
    figsize=[(screensize(3)-652)/2 (screensize(4)-380)/2 652 380];
    set(gcf,'units','pixels','position',figsize,'visible','on');
    %_____________end set the figure size
    set([h],'units','normalized')
    
end

if nargin>0
    switch action
    case 'edit'
        %disp('entering edit case')
        hvariable=findobj('tag',var_name);
        %find index where there's a space
        for i=1:length(var_name)
            if strcmp(var_name(i),' ')
                i=i-1;
                break
            end
        end
        var_name=var_name(1:i);

        %get the value from the edit menu and assign it in the workspace
        str_name=get(hvariable,'string');
        evalin('base',[var_name,'=',str_name,';'])
        evalin('base',['binf.RC.',var_name,'=',str_name,';'])  %save to binf
        %disp('after renaming var')
        
    case 'PbA defaults'
        var_input={[type '_module_mass (kg)'],[type '_min_volts'],[type '_max_volts'],[type '_module_num'],...
                [type '_mod_cp (J/kgK)'],[type '_set_tmp (C)'],[type '_mod_sarea (m^2)'],...
                [type '_mod_airflow (kg/s)'],[type '_mod_flow_area (m^2)'],[type '_mod_case_thk (m)'],...
                [type '_mod_case_th_cond (W/mK)']};
        default_str={'1','9.5','16.5','1',...
                '660','35','0.2',...
                '.07/12','.004','.002',...
                '.20'};
        
        for i=1:length(var_input)
            var_name=var_input{i};
            hvariable=findobj('tag',var_name);
            %find index where there's a space
            for j=1:length(var_name)
                if strcmp(var_name(j),' ')
                    j=j-1;
                    break
                end
            end
            var_name=var_name(1:j);
            %get the value from the edit menu and assign it in the workspace
            evalin('base',['binf.RC.',var_name,'=',default_str{i},';'])  %save to binf

            set(findobj('tag',var_input{i}),'string',default_str{i});
        end
        
    case 'NiMH defaults'
        var_input={[type '_module_mass (kg)'],[type '_min_volts'],[type '_max_volts'],[type '_module_num'],...
                [type '_mod_cp (J/kgK)'],[type '_set_tmp (C)'],[type '_mod_sarea (m^2)'],...
                [type '_mod_airflow (kg/s)'],[type '_mod_flow_area (m^2)'],[type '_mod_case_thk (m)'],...
                [type '_mod_case_th_cond (W/mK)']};
        default_str={'1','6','9','1',...
                '800','35','0.0378',...
                '.01','.0024','.1/1000',...
                '.20'};
        
        for i=1:length(var_input)
            var_name=var_input{i};
            hvariable=findobj('tag',var_name);
            %find index where there's a space
            for j=1:length(var_name)
                if strcmp(var_name(j),' ')
                    j=j-1;
                    break
                end
            end
            var_name=var_name(1:j);
            %get the value from the edit menu and assign it in the workspace
            evalin('base',['binf.RC.',var_name,'=',default_str{i},';'])  %save to binf

            set(findobj('tag',var_input{i}),'string',default_str{i});
        end
        
    case 'LI defaults'
        var_input={[type '_module_mass (kg)'],[type '_min_volts'],[type '_max_volts'],[type '_module_num'],...
                [type '_mod_cp (J/kgK)'],[type '_set_tmp (C)'],[type '_mod_sarea (m^2)'],...
                [type '_mod_airflow (kg/s)'],[type '_mod_flow_area (m^2)'],[type '_mod_case_thk (m)'],...
                [type '_mod_case_th_cond (W/mK)']};
        default_str={'.37824','2','3.9','1',...
                '795','35','0.032',...
                '.07/12','.0011','.001',...
                '15'};
        
        for i=1:length(var_input)
            var_name=var_input{i};
            hvariable=findobj('tag',var_name);
            %find index where there's a space
            for j=1:length(var_name)
                if strcmp(var_name(j),' ')
                    j=j-1;
                    break
                end
            end
            var_name=var_name(1:j);
            %get the value from the edit menu and assign it in the workspace
            evalin('base',['binf.RC.',var_name,'=',default_str{i},';'])  %save to binf

            set(findobj('tag',var_input{i}),'string',default_str{i});
        end

    case 'continue'
        close(gcf)        
        process_data('RC',0);   %read in data, convert with eqns, found in binf.RC.data
        process_hppc;           %process the data into the model
        
    end
end

%Revision history
%03/13/01: vhj file created from make_ADV_bat_file
%03/15/01: vhj default # mods=1