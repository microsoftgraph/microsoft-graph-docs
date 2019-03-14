#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var assignedToTaskBoardFormat = await graphClient.Planner.Tasks["{task-id}"].AssignedToTaskBoardFormat.Request().GetAsync();

```