#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var bucketTaskBoardFormat = await graphClient.Planner.Tasks.Tasks.BucketTaskBoardFormat.Request().GetAsync();
*** 

```