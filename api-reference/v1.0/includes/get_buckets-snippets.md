#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var buckets = await graphClient.Planner.Plans["{plan-id}"].Buckets.Request().GetAsync();

```