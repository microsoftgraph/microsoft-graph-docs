#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var tasks = await graphClient.Planner.Tasks.Tasks.Request().GetAsync();

```