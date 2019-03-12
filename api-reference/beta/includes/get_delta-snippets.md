#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var all = await graphClient.Me.Planner.All.All.Request().GetAsync();

```