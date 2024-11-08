# lets make the smallest Hellow World app
function Invoke-HelloWorld {
    [CmdletBinding()]
    param (
        [Parameter()]
        [ValidateNotNullOrEmpty()]
        [string]
        $text = "Hello World!"
    )
    
    Write-Output $text
}

Export-ModuleMember -Function Invoke-HelloWorld
