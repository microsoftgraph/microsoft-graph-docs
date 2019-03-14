#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var bucketTaskBoardFormat = await graphClient.Planner.Tasks["01gzSlKkIUSUl6DF_EilrmQAKDhh"].BucketTaskBoardFormat.Request().GetAsync();

```