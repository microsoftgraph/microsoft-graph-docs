#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var getTeamsUserActivityUserCounts = await graphClient.Reports.GetTeamsUserActivityUserCounts().Request().GetAsync();

```