function CustomParamFigControl(option1,option2,option3)
%   function CustomParamFigControl(option1,option2,option3)
%       This function controls CustomParamFig
%       Initial Call:
%           option1: Model Name
%           option2: Parameter text list


%   Initialize figure
if isempty(findobj('tag','CustomParamFig'))
    
    CustomParamFigHandle=CustomParamFig;
    
    ModelName=option1;
    ParamTextList=option2;
  
    %   Center the figure on the screen
    center_figure(CustomParamFigHandle);
    
    %   set everything normalized 
    h=findobj(CustomParamFigHandle,'type','uicontrol');
    set(h,'units','normalized');    

    set(findobj('tag','ModelName'),'string',[ModelName,'_']);
    set(findobj('tag','CustomName'),'string','custom');
    
    %   Turn extra parameter definition slots visibile off
    for i=length(ParamTextList)+1:11
        eval(['set(findobj(''tag'',''ParamText',num2str(i),'''),''visible'',''off'')']);
        eval(['set(findobj(''tag'',''ParamValue',num2str(i),'''),''visible'',''off'')']);
    end
    
    %   Set parameter text names
    for i=1:length(ParamTextList)
        eval(['set(findobj(''tag'',''ParamText',num2str(i),'''),''string'',ParamTextList(i))']);
    end
    
    %   Set figure visible
    set(CustomParamFigHandle,'visible','on');
    
end


ModelName=strrep(get(findobj('tag','ModelName'),'string'),'_','');

%   Control figure
switch option1
    
case {'Back','Done'}
    
    %   Update list in ManageListFig 
    OldList=get(findobj('tag','ListBox'),'string');
    NewModelName=[ModelName,'_',get(findobj('tag','CustomName'),'string')];
    
    CreateModelFail=CreateModelFile(NewModelName);  % If successful, it closes the figure
    
    if CreateModelFail==0
        NewModelName=strrep(NewModelName,'.m','');
        NewModelName=cellstr(NewModelName);

        %   If not on list, put it on list
        if isempty(strmatch(NewModelName,OldList))
            NewList=[OldList;NewModelName];
            set(findobj('tag','ListBox'),'string',NewList);
        end
        
        close(findobj('tag','CustomParamFig'));
        SaberFigControl('SetLists');
    end
    
    
case 'Help'
    
case 'Cancel'
    close(gcf);
    
    
end



%===============================================================================
% CreateModelFile(NewModelName)
%   This function writes out a new M file with the custom data defined
%   in the figure.
%===============================================================================
function Fail=CreateModelFile(NewModelName)

AdvisorPath=strrep(which('advisor.m'),'\advisor.m','');
directory=[AdvisorPath,'\models\Saber\'];

%   Assign parameter data to variable ModelData
j=1;
while ~isempty(findobj('tag',['ParamValue',num2str(j)])) & strcmp(get(findobj('tag',['ParamValue',num2str(j)]),'visible'),'on')
    ModelDataString{j}=get(findobj('tag',['ParamValue',num2str(j)]),'string');
    try 
        ModelData(j)=str2num(ModelDataString{j});
    catch
        warndlg('Numerical values must be entered for all parameters');
        Fail=1;
        break
    end
    j=j+1;
end

if ~exist('Fail')
    
    file=[NewModelName];
    ext_name='.m';
    file_name=strcat(directory,file,ext_name);
    
    fid=fopen(file_name,'w');
    fprintf(fid,'%% This file is generated by CustomParamFigControl.m\n');
    fprintf(fid,'%%     It stores cutom vehicle types for specific models\n');
    fprintf(fid,['function [Data]=',file,'\n']);
    
    fprintf(fid,'Data = [%f,...\n',ModelData(1));
    for i=2:length(ModelData)-1
        fprintf(fid,'%f,...\n',ModelData(i));
    end
    fprintf(fid,'%f];',ModelData(length(ModelData)));
    
    fclose(fid);
    Fail=0;
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Revision notes
% 08/02/01: ab file created (first working)