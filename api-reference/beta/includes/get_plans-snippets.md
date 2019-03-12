#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var plans = await graphClient.Me.Planner.Plans.Request().GetAsync();
*** 

```