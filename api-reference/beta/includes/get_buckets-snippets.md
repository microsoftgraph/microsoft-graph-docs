#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var buckets = await graphClient.Planner.Plans["2txjA-BMZEq-bKi6Wfj5aGQAB1OJ"].Buckets.Request().GetAsync();

```