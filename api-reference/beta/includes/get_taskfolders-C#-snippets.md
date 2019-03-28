
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var taskFolders = await graphClient.Me.Outlook.TaskFolders
	.Request()
	.GetAsync();

```