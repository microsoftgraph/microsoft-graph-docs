#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var taskFolders = await graphClient.Me.Outlook.TaskFolders["AAMkADIyAAAAABrJAAA="].Request().GetAsync();

```