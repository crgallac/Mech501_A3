function newstate = umtoggle(uimenu_handle)
%UMTOGGLE Obsolete function.
%   UMTOGGLE function is OBSOLETE and may be removed from future versions.
%   The replacement for this function is to set the 'Checked' property of
%   uimenu objects.
%
%   See also UIMENU, MENUBAR, WINMENU.

% error('MATLAB:umtoggle:ObsoleteFunction', 'UMTOGGLE function is obsolete. Set the ''Checked'' property of uimenu objects instead.');

%UMTOGGLE  Toggle "checked" status of uimenu object.
%   UMTOGGLE(U) changes the 'checked' status of the object
%   U from 'on' to 'off' or from 'off' to 'on', and returns
%   1 if the new status is 'on' and 0 if the new status is
%   'off'.
%   
%   Example:
%       fig1 = figure;
%       uih = uimenu(fig1, 'Label', 'Top');
%       uihh = uimenu(uih, 'Label', 'Option1', 'Checked', 'off');
%       %this will toggle it on
%       onstate  = umtoggle(uihh)
%       %this will toggle it off
%       offstate = umtoggle(uihh)

%  Author: T. Krauss 10-14-94
%  Copyright 1984-2006 The MathWorks, Inc.
%  $Revision: 1.13.4.5 $  $Date: 2007/06/14 05:13:53 $

% obsolete = true;
% 
str = get(uimenu_handle,'checked');
if strcmp(str,'on')
   newstate = 0;  newstr = 'off';
else
   newstate = 1;  newstr = 'on';
end
set(uimenu_handle,'checked',newstr)