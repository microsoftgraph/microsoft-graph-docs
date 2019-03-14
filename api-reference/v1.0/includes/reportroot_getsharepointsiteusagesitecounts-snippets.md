#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var getSharePointSiteUsageSiteCounts = await graphClient.Reports.GetSharePointSiteUsageSiteCounts().Request().GetAsync();

```