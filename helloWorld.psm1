# lets make the smallest Hellow World app
function Invoke-HelloWorld {
    [CmdletBinding()]
    param (
        [Parameter()]
        [ValidateNotNullOrEmpty()]
        [string]
        $response = "Hello World!"
    )
    
    Write-Output $response
}

Export-ModuleMember -Function Invoke-HelloWorld
