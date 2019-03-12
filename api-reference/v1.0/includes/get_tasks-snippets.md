#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var tasks = await graphClient.Me.Planner.Tasks.Request().GetAsync();
*** 

```