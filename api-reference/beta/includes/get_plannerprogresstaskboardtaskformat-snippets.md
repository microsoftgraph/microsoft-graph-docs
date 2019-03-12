#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var progressTaskBoardFormat = await graphClient.Planner.Tasks.Tasks.ProgressTaskBoardFormat.Request().GetAsync();

```