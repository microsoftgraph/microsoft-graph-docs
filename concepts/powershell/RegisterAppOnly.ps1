param(
  [Parameter(Mandatory=$true,
  HelpMessage="The friendly name of the app registration")]
  [String]
  $AppName,

  [Parameter(Mandatory=$true,
  HelpMessage="The file path to your public key file")]
  [String]
  $CertPath,

  [Parameter(Mandatory=$false)]
  [Switch]
  $StayConnected = $false
)

# Graph permissions constants
$graphResourceId = "00000003-0000-0000-c000-000000000000"
$UserReadAll = @{
  Id="df021288-bdef-4463-88db-98f22de89214"
  Type="Role"
}
$GroupReadAll = @{
  Id="5b567255-7703-4780-807c-7be8301ae99b"
  Type="Role"
}

# Requires an admin
Connect-Graph -Scopes "Application.ReadWrite.All User.Read"

# Get context for access to tenant ID
$context = Get-MgContext

# Load cert
$cert = New-Object System.Security.Cryptography.X509Certificates.X509Certificate2($CertPath)
Write-Host -ForegroundColor Cyan "Certificate loaded"

# Create app registration
$appRegistration = New-MgApplication -DisplayName $AppName -SignInAudience "AzureADMyOrg" `
 -RequiredResourceAccess @{ ResourceAppId=$graphResourceId; ResourceAccess=$UserReadAll, $GroupReadAll } `
 -AdditionalProperties @{} -KeyCredentials @(@{ Type="AsymmetricX509Cert"; Usage="Verify"; Key=$cert.RawData })
Write-Host -ForegroundColor Cyan "App registration created with app ID" $appRegistration.AppId

# Create corresponding service principal
New-MgServicePrincipal -AppId $appRegistration.AppId -AdditionalProperties @{} | Out-Null
Write-Host -ForegroundColor Cyan "Service principal created"
Write-Host
Write-Host -ForegroundColor Green "Success"
Write-Host

# Generate admin consent URL
$adminConsentUrl = "https://login.microsoftonline.com/" + $context.TenantId + "/adminconsent?client_id=" `
 + $appRegistration.AppId
Write-Host -ForeGroundColor Yellow "Please go to the following URL in your browser to provide admin consent"
Write-Host $adminConsentUrl
Write-Host

# Generate Connect-Graph command
$connectGraph = "Connect-Graph -ClientId """ + $appRegistration.AppId + """ -TenantId """`
 + $context.TenantId + """ -CertificateName """ + $cert.SubjectName.Name + """"
Write-Host -ForeGroundColor Cyan "After providing admin consent, you can use the following values with Connect-Graph for app-only:"
Write-Host $connectGraph

if ($StayConnected -eq $false)
{
  Disconnect-Graph
  Write-Host "Disconnected from Microsoft Graph"
}
else
{
  Write-Host
  Write-Host -ForegroundColor Yellow "The connection to Microsoft Graph is still active. To disconnect, use Disconnect-Graph"
}
