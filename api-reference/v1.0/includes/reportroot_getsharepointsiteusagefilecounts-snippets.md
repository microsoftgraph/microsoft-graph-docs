#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var getSharePointSiteUsageFileCounts = await graphClient.Reports.GetSharePointSiteUsageFileCounts().Request().GetAsync();

```