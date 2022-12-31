# .ExternalHelp $PSScriptRoot\Test-WindowVisible-help.xml
function Test-WindowVisible {

    [CmdletBinding()]

    Param (

        [Parameter(Position = 0)]
        [ValidateNotNullOrEmpty()]
        [System.Int32]
        $Id
    )

    if (!($Id)) {
        $Id = [System.Diagnostics.Process]::GetCurrentProcess().Id
    }

    if ($(Get-Process -Id $Id).MainWindowHandle -eq 0) {
        $false
    }
    else {
        $true
    }
}
