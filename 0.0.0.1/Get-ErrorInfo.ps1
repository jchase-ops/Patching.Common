# .ExternalHelp $PSScriptRoot\Get-ErrorInfo-help.xml
function Get-ErrorInfo {

    [CmdletBinding()]

    Param (

        [Parameter(Position = 0, ValueFromPipeline)]
        [ValidateNotNullOrEmpty()]
        [System.Object]
        $Exception,

        [Parameter(Position = 1)]
        [ValidateNotNullOrEmpty()]
        [System.String]
        $CommandName,

        [Parameter(Position = 2)]
        [ValidateNotNullOrEmpty()]
        [System.String]
        $ModuleName
    )

    if ($CommandName) {
        if ($ModuleName) {
            [ErrorInfo]::New($Exception, $CommandName, $ModuleName)
        }
        else {
            [ErrorInfo]::New($Exception, $CommandName)
        }
    }
    else {
        [ErrorInfo]::New($Exception)
    }
}
