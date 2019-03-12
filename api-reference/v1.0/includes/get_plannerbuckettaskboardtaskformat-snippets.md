#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var bucketTaskBoardFormat = await graphClient.Planner.Tasks.Tasks.BucketTaskBoardFormat.Request().GetAsync();

```