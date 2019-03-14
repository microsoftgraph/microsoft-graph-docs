#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var getSharePointSiteUsagePages = await graphClient.Reports.GetSharePointSiteUsagePages().Request().GetAsync();

```