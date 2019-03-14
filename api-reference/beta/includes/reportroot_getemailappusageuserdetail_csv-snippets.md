#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var getEmailAppUsageUserDetail = await graphClient.Reports.GetEmailAppUsageUserDetail().Request().GetAsync();

```