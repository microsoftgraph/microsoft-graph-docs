#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var plans = await graphClient.Planner.Plans.Plans.Request().GetAsync();
*** 

```