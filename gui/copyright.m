function fig = copyright()
% This is the machine-generated representation of a Handle Graphics object
% and its children.  Note that handle values may change when these objects
% are re-created. This may cause problems with any callbacks written to
% depend on the value of the handle at the time the object was saved.
%
% To reopen this object, just type the name of the M-file at the MATLAB
% prompt. The M-file and its associated MAT-file must be on your path.

figurecolor=[0 0 .62745];
h0 = figure('Color',figurecolor, ...
	'Name',[advisor_ver('info'),'--Copyright and Disclaimer'], ...
   'NumberTitle','off', ...
   'MenuBar','none',...
   'Position',[388 222 440 300],...
   'WindowStyle','modal');

[a_version,a_date]=advisor_ver('info');
string1={[a_version,a_date];...
      'Software developed at NREL';...
      'Copyright � 2003-2010_Alliance for Sustainable Energy, LLC, Inc.';...
      'All Rights Reserved.'};
string2={...
      'This computer software was prepared by the Alliance for Sustainable Energy, '
      'LLC, hereinafter the Contractor, under Contract DE-AC36-08GO28308 (Contract) '
      'with the Department of Energy (DOE).   The U.S. Government has been granted '
      'for itself and others acting on its behalf a paid-up, non-exclusive, '
      'irrevocable, worldwide license in the Software to reproduce, prepare '
      'derivative works, and perform publicly and display publicly.  Beginning five '
      '(5) years after the date permission to assert copyright is obtained from the '
      'DOE, and subject to any subsequent five (5) year renewals, the U.S. Government '
      'is granted for itself and others acting on its behalf a paid-up, non-exclusive, '
      'irrevocable, worldwide license in the Software to reproduce, prepare derivative '
      'works, distribute copies to the public, perform publicly and display publicly, '
      'and to permit others to do so. If the Contractor ceases to make this computer '
      'software available, it may be obtained from DOE�s Office of Scientific and '
      'Technical Information�s Energy Science and Technology Software Center (ESTSC) '
      'at P.O. Box 62, 1 Science Gov Way Oak Ridge, TN 37831-1020.   THIS SOFTWARE '
      'IS PROVIDED BY THE CONTRACTOR "AS IS" AND ANY EXPRESS OR IMPLIED '
      'WARRANTIES, INCLUDING BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF '
      'MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE '
      'DISCLAIMED.  IN NO EVENT SHALL THE CONTRACTOR OR THE U.S. '
      'GOVERNMENT BE LIABLE FOR ANY SPECIAL, INDIRECT OR CONSEQUENTIAL '
      'DAMAGES OR ANY DAMAGES WHATSOEVER, INCLUDING BUT NOT LIMITED TO '
      'CLAIMS ASSOCIATED WITH THE LOSS OF DATA OR PROFITS, WHICH MAY '
      'RESULT FROM AN ACTION IN CONTRACT, NEGLIGENCE OR OTHER TORTIOUS '
      'CLAIM THAT ARISES OUT OF OR IN CONNECTION WITH THE ACCESS, USE '
      'OR PERFORMANCE OF THIS SOFTWARE.  '};

h1=uicontrol('parent',h0,...
   'BackgroundColor',figurecolor,...
   'Position',[10 230 420 60],...
   'fontweight','bold',...
   'foregroundcolor',[1 1 1],...
   'string',string1,...
   'style','text');

h2 = uicontrol('Parent',h0, ...
	'BackgroundColor',[ 0.75 0.75 0.75], ...
	'Position',[10 53 420 175], ...
	'String',string2, ...
   'Style','listbox', ...
   'Tag','StaticText1');

str3={'Special thanks to Bill Moore (EV World)';...
      'and Warren Gretz (NREL) for the intro sound.'};

h1=uicontrol('parent',h0,...
   'BackgroundColor',figurecolor,...
   'Position',[10 2 300 40],...
   'fontweight','bold',...
   'foregroundcolor',[1 1 1],...
   'string',str3,...
   'style','text');



h3 = uicontrol('Parent',h0, ...
   'CallBack','close(gcbf)',...
   'Position',[340 8 60 40], ...
	'String','O.K.', ...
   'Tag','Pushbutton1');

set([h1 h2 h3 h0],'units','normalized')

%center the figure on the screen
set(h0,'units','pixels');
position=get(h0,'position');
screensize=get(0,'screensize');
set(h0,'position', [(screensize(3)-position(3))/2  (screensize(4)-position(4))/2 ...
         position(3) position(4)])


%REVISIONS
% 
% 4/6/99-ss: changed produce to produced on first sentence of copyright
% 7/18/00 ss: changed colors and positions.
% 7/21/00 ss: updated name for version info to advisor_ver.
% 8/10/00 ss: added code to center the figure on the screen based on screen resolution.
% 8/17/00 ss: added special thanks to Bill Moore and Warren Gretz for the intro sound.
% 2/1/00 ss: added -2001 to copyright heading.