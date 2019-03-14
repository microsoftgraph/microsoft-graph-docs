#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var getTeamsUserActivityCounts = await graphClient.Reports.GetTeamsUserActivityCounts().Request().GetAsync();

```