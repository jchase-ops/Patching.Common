# Patching.Common PS Module

#region Classes
################################################################################
#                                                                              #
#                                 CLASSES                                      #
#                                                                              #
################################################################################
# . "$PSScriptRoot\$(Split-Path -Path $(Split-Path -Path $PSScriptRoot -Parent) -Leaf).Classes.ps1"
#endregion

#region Variables
################################################################################
#                                                                              #
#                               VARIABLES                                      #
#                                                                              #
################################################################################

#endregion

#region DotSourcedScripts
################################################################################
#                                                                              #
#                           DOT-SOURCED SCRIPTS                                #
#                                                                              #
################################################################################
. "$PSScriptRoot\Get-ErrorInfo.ps1"
. "$PSScriptRoot\Test-WindowVisible.ps1"
#endregion

#region ModuleMembers
################################################################################
#                                                                              #
#                              MODULE MEMBERS                                  #
#                                                                              #
################################################################################
Export-ModuleMember -Function Get-ErrorInfo, Test-WindowVisible
#endregion
