Param ( 
    [string]$adminUser = $env:username, 
    [string]$adminPass, 
    [string]$csv, 
    [switch]$h = $false
)

if ($h) {
Write-Host("Help Text")
} else {
    Write-Host("Not working")
}
