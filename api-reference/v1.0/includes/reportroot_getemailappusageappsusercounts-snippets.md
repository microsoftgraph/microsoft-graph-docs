#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var getEmailAppUsageAppsUserCounts = await graphClient.Reports.GetEmailAppUsageAppsUserCounts().Request().GetAsync();

```