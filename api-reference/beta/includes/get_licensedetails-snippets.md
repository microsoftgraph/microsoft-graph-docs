#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var licenseDetails = await graphClient.Me.LicenseDetails.Request().GetAsync();
*** 

```