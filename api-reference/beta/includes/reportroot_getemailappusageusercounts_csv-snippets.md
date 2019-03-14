#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var getEmailAppUsageUserCounts = await graphClient.Reports.GetEmailAppUsageUserCounts().Request().GetAsync();

```