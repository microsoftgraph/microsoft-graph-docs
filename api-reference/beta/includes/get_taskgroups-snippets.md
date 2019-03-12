#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var taskGroups = await graphClient.Me.Outlook.TaskGroups.Request().GetAsync();
*** 

```