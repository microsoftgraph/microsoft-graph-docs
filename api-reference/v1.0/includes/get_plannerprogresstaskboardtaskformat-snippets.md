#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var progressTaskBoardFormat = await graphClient.Planner.Tasks.Tasks.ProgressTaskBoardFormat.Request().GetAsync();
*** 

```