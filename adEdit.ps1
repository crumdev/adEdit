Import-Module ActiveDirectory

$secPass = ConvertTo-SecureString "S@rah072016" -AsPlainText -Force;
$mycreds = New-Object System.Management.Automation.PSCredential("20453065",$secPass);
$domain = "xrxss.com";



$data = @(
    @{'id' = "30064038" },
    @{'id' = "30203603" },
    @{'id' = "50010860" },
    @{'id' = "40846312" }
)

foreach($user in $data) {
    <#
    # Uncomment the two below commands to test your file and that the accounts exist
    #>
    
    #Write-Host $user.id
    Get-ADUser $user.id -server $domain -credential $mycreds
    

    #Disable-ADAccount $user.id -Server $domain -Credential $mycreds
}
