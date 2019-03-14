#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var getSharePointSiteUsageDetail = await graphClient.Reports.GetSharePointSiteUsageDetail().Request().GetAsync();

```