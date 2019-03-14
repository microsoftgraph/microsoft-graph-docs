#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var recentPlans = await graphClient.Me.Planner.RecentPlans.Request().GetAsync();

```