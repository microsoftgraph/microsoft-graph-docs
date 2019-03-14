#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var getSharePointActivityFileCounts = await graphClient.Reports.GetSharePointActivityFileCounts().Request().GetAsync();

```