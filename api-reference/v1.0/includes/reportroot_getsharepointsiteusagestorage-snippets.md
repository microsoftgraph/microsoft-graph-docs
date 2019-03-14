#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var getSharePointSiteUsageStorage = await graphClient.Reports.GetSharePointSiteUsageStorage().Request().GetAsync();

```