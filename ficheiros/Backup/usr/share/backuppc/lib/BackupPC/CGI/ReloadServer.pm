#============================================================= -*-perl-*-
#
# BackupPC::CGI::ReloadServer package
#
# DESCRIPTION
#
#   This module implements the ReloadServer action for the CGI interface.
#
# AUTHOR
#   Craig Barratt  <cbarratt@users.sourceforge.net>
#
# COPYRIGHT
#   Copyright (C) 2003-2017  Craig Barratt
#
#   This program is free software; you can redistribute it and/or modify
#   it under the terms of the GNU General Public License as published by
#   the Free Software Foundation; either version 2 of the License, or
#   (at your option) any later version.
#
#   This program is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#   GNU General Public License for more details.
#
#   You should have received a copy of the GNU General Public License
#   along with this program; if not, write to the Free Software
#   Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
#
#========================================================================
#
# Version 3.3.2, released 25 Jan 2017.
#
# See http://backuppc.sourceforge.net.
#
#========================================================================

package BackupPC::CGI::ReloadServer;

use strict;
use BackupPC::CGI::Lib qw(:all);

sub action
{
    ServerConnect();
    $bpc->ServerMesg("log User $User requested server configuration reload");
    $bpc->ServerMesg("server reload");
    print $Cgi->redirect($MyURL);
}

1;
