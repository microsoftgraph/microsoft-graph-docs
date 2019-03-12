#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var taskFolders = await graphClient.Me.Outlook.TaskFolders.TaskFolders.Request().GetAsync();
*** 

```