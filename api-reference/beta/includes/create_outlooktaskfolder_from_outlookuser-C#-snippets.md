
```CS

GraphServiceClient graphClient = new GraphServiceClient();

//create instance of OutlookTaskFolder
var taskFolders = new OutlookTaskFolder
{
	Name = "Volunteer",
};

await graphClient.Me.Outlook.TaskFolders
	.Request()
	.AddAsync(taskFolders);

```