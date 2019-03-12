#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var recentPlans = await graphClient.Me.Planner.RecentPlans.Request().GetAsync();
*** 

```