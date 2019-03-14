#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var getTeamsUserActivityUserDetail = await graphClient.Reports.GetTeamsUserActivityUserDetail().Request().GetAsync();

```