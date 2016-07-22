Import-Module ActiveDirectory

$secPass = ConvertTo-SecureString "S@rah072016" -AsPlainText -Force;
$mycreds = New-Object System.Management.Automation.PSCredential("20453065",$secPass);
$domain = "xrxss.com";

$csv = Import-Csv -path .\accounts.csv


foreach($user in $csv) {
    getUser($user);
}

function getUser ($user) {
    Get-ADUser $user.id -server $domain -credential $mycreds
}

function enableUser ($user) {
    Disable-ADAccount $user.id -server $domain -Credential $mycreds
}