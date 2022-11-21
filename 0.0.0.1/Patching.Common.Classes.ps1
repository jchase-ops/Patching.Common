#region Class
class ErrorInfo {

    #region Properties
    [System.String] $Category
    [System.String] $CategoryReason
    [System.String] $ExceptionErrorCode
    [System.String] $ExceptionFullName
    [System.String] $ExceptionMessage
    [System.String] $InvocationName
    [System.String] $Line
    [System.String] $MyCommand
    [System.String] $OffsetInLine
    [System.String] $PSCommandPath
    [System.String] $PSScriptRoot
    [System.String] $ScriptLineNumber
    [System.String] $ScriptName
    [System.String] $CommandName
    [System.String] $ModuleName
    hidden [System.DateTime] $TimeStamp
    #endregion

    #region Constructors
    ErrorInfo (
        [PSObject] $Exception
    ) {
        $this.Category = $Exception.CategoryInfo.Category
        $this.CategoryReason = $Exception.CategoryInfo.Reason
        $this.ExceptionErrorCode = $Exception.Exception.HResult.ToString('x')
        $this.ExceptionFullName = $Exception.Exception.GetType().FullName
        $this.ExceptionMessage = $Exception.Exception.Message -Split "\r?\n" | Select-Object -Last 1
        $this.InvocationName = $Exception.InvocationInfo.InvocationName
        $this.Line = $Exception.InvocationInfo.Line
        $this.MyCommand = $Exception.InvocationInfo.MyCommand
        $this.OffsetInLine = $Exception.InvocationInfo.OffsetInLine
        $this.PSCommandPath = $Exception.InvocationInfo.PSCommandPath
        $this.PSScriptRoot = $Exception.InvocationInfo.PSScriptRoot
        $this.ScriptLineNumber = $Exception.InvocationInfo.ScriptLineNumber
        $this.ScriptName = $Exception.InvocationInfo.ScriptName
        $this.CommandName = $MyInvocation.MyCommand.Name
        $this.ModuleName = $MyInvocation.MyCommand.ModuleName
        $this.TimeStamp = Get-Date
    }

    ErrorInfo (
        [PSObject] $Exception,
        [System.String] $CommandName
    ) {
        $this.Category = $Exception.CategoryInfo.Category
        $this.CategoryReason = $Exception.CategoryInfo.Reason
        $this.ExceptionErrorCode = $Exception.Exception.HResult.ToString('x')
        $this.ExceptionFullName = $Exception.Exception.GetType().FullName
        $this.ExceptionMessage = $Exception.Exception.Message -Split "\r?\n" | Select-Object -Last 1
        $this.InvocationName = $Exception.InvocationInfo.InvocationName
        $this.Line = $Exception.InvocationInfo.Line
        $this.MyCommand = $Exception.InvocationInfo.MyCommand
        $this.OffsetInLine = $Exception.InvocationInfo.OffsetInLine
        $this.PSCommandPath = $Exception.InvocationInfo.PSCommandPath
        $this.PSScriptRoot = $Exception.InvocationInfo.PSScriptRoot
        $this.ScriptLineNumber = $Exception.InvocationInfo.ScriptLineNumber
        $this.ScriptName = $Exception.InvocationInfo.ScriptName
        $this.CommandName = $CommandName
        $this.ModuleName = $MyInvocation.MyCommand.ModuleName
        $this.TimeStamp = Get-Date
    }

    ErrorInfo (
        [PSObject] $Exception,
        [System.String] $CommandName,
        [System.String] $ModuleName
    ) {
        $this.Category = $Exception.CategoryInfo.Category
        $this.CategoryReason = $Exception.CategoryInfo.Reason
        $this.ExceptionErrorCode = $Exception.Exception.HResult.ToString('x')
        $this.ExceptionFullName = $Exception.Exception.GetType().FullName
        $this.ExceptionMessage = $Exception.Exception.Message -Split "\r?\n" | Select-Object -Last 1
        $this.InvocationName = $Exception.InvocationInfo.InvocationName
        $this.Line = $Exception.InvocationInfo.Line
        $this.MyCommand = $Exception.InvocationInfo.MyCommand
        $this.OffsetInLine = $Exception.InvocationInfo.OffsetInLine
        $this.PSCommandPath = $Exception.InvocationInfo.PSCommandPath
        $this.PSScriptRoot = $Exception.InvocationInfo.PSScriptRoot
        $this.ScriptLineNumber = $Exception.InvocationInfo.ScriptLineNumber
        $this.ScriptName = $Exception.InvocationInfo.ScriptName
        $this.CommandName = $CommandName
        $this.ModuleName = $ModuleName
        $this.TimeStamp = Get-Date
    }
    #endregion

    #region Methods

    #endregion
}
#endregion
# SIG # Begin signature block
# MIIFYQYJKoZIhvcNAQcCoIIFUjCCBU4CAQExCzAJBgUrDgMCGgUAMGkGCisGAQQB
# gjcCAQSgWzBZMDQGCisGAQQBgjcCAR4wJgIDAQAABBAfzDtgWUsITrck0sYpfvNR
# AgEAAgEAAgEAAgEAAgEAMCEwCQYFKw4DAhoFAAQUCELDUN4TclOncn0Bnj8gOW5F
# 2JigggMAMIIC/DCCAeSgAwIBAgIQFnL4oVNG56NIRjNfzwNXejANBgkqhkiG9w0B
# AQUFADAWMRQwEgYDVQQDDAtDZXJ0LTAzNDU2MDAeFw0yMTEyMDIwNDU5MTJaFw0y
# MjEyMDIwNTE5MTJaMBYxFDASBgNVBAMMC0NlcnQtMDM0NTYwMIIBIjANBgkqhkiG
# 9w0BAQEFAAOCAQ8AMIIBCgKCAQEA8daSAcUBI0Xx8sMMlSpsCV+24lY46RsxX8iC
# bB7ZM19b/GBjwMo0TCb28ssbZ/P8liNJICrSbyIkQDrIrjqtAdyAPdPAYHONTHad
# 0fuOQQT5MkO5HAxUYLz/6H/xq92lKQFxz5Wgzw+3KOyignY8V8ZZ379z/WqQbNCV
# +29zb9YWOK7eXQ9x8s4+SOizqUE3zkOuijf86I9vZmzMYhsxE7if0R0UlQsLlvTA
# kH/m4IjHem8rl/kC+O71lU7l9475XrUUR3Fxebqh9YoCEZh2eE81TLQcnvK8zgqP
# F+X4INdNPD6zO4T1Nbz0Ccev7mj37+pk/eL5R5aV+NJgqAzhvQIDAQABo0YwRDAO
# BgNVHQ8BAf8EBAMCBaAwEwYDVR0lBAwwCgYIKwYBBQUHAwMwHQYDVR0OBBYEFFNN
# e4x6JSqbcnTR354fVSEgQ0VYMA0GCSqGSIb3DQEBBQUAA4IBAQBXfA8VgaMD2c/v
# Sv8gnS/LWri51BBqcUFE9JYMxEIzlEt2ZfJsG+INaQqzBoyCDx/oMQH7wdFRvDjQ
# QsXpNTo7wH7WytFe9KJrOz2uGG0EnIYHK0dTFIMVOcM9VsWWPG40EAzD//55xX/d
# pBL+L4SSTujbR3ptni8Agu5GiRhTpxwl1L/HLC2QYYMoUKiAxL1p61+cHRj6wMzl
# jxnrMIcBhKioaXnwWdKPCN66Jk8IYdqr8afcRYiwtDi+8Hk2/9nB9HwPox3Dtf8H
# jH0O2/8NiJTeOBFSfrWPM9r4j4NWR8IuLwsqHUfXJEQa9SOxhHvxaNMR/Fhq1GVj
# qUClZiXiMYIByzCCAccCAQEwKjAWMRQwEgYDVQQDDAtDZXJ0LTAzNDU2MAIQFnL4
# oVNG56NIRjNfzwNXejAJBgUrDgMCGgUAoHgwGAYKKwYBBAGCNwIBDDEKMAigAoAA
# oQKAADAZBgkqhkiG9w0BCQMxDAYKKwYBBAGCNwIBBDAcBgorBgEEAYI3AgELMQ4w
# DAYKKwYBBAGCNwIBFTAjBgkqhkiG9w0BCQQxFgQUlFJvgZ3CWseziYZs4MFjkDEA
# oykwDQYJKoZIhvcNAQEBBQAEggEAincqZmu/H5RenDj1rQSwcg0usLPePXu15FWk
# njWhOKJ+KOmbI/D/YSUFuAhcQZT6paPGjI+puBOMuwL6pUZ8HH8t3WquMxJ4KdsL
# yhmUehvNXBfvgWxXybFY9mPvJSBDqcHuqcuw9kT0RBufDBUvJeEu/o10adz1ELls
# z0VhM9dDlqkogsmBVtm69ztPdGJPDXVP6EpwbBe1/HY9R54nEuAKawpjE2m8D6pO
# kczxOsKyME/kdknpx6Dk3ZX9DJAHKxAWI2k9cTElEfDeaTp8D+lNqX2XEVHRSTcU
# 4eaKyJ9+6eJs+eLLHrZZDE2cVHNBYsCl/Oqe0CXq6MsoAjWaZA==
# SIG # End signature block
