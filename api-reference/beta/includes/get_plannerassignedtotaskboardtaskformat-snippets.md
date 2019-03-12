#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var assignedToTaskBoardFormat = await graphClient.Planner.Tasks.Tasks.AssignedToTaskBoardFormat.Request().GetAsync();
*** 

```