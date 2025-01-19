# lets make the smallest Hellow World app
function Invoke-HelloWorld {
    [CmdletBinding()]
    param (
        [Parameter()]
        [ValidateNotNullOrEmpty()]
        [string]
        $reply = "Hello World!"
    )
    
    Write-Output $reply
}

Export-ModuleMember -Function Invoke-HelloWorld
