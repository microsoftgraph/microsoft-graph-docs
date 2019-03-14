#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var getSharePointActivityUserCounts = await graphClient.Reports.GetSharePointActivityUserCounts().Request().GetAsync();

```