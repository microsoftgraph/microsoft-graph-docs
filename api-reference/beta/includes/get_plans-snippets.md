#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var plans = await graphClient.Me.Planner.Plans.Request().GetAsync();

```