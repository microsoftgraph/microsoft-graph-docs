#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var licenseDetails = await graphClient.Me.LicenseDetails.Request().GetAsync();

```