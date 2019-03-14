#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var plans = await graphClient.Planner.Plans["<id>"].Request().GetAsync();

```