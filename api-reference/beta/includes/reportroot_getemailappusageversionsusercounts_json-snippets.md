#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var getEmailAppUsageVersionsUserCounts = await graphClient.Reports.GetEmailAppUsageVersionsUserCounts().Request().GetAsync();

```