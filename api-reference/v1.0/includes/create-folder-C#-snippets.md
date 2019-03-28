
```CS

GraphServiceClient graphClient = new GraphServiceClient();

//create instance of Folder
var folder = new Folder
{
};

//create instance of DriveItem
var children = new DriveItem
{
	Name = "New Folder",
	Folder = folder,
	@microsoft.graph.conflictBehavior = "rename",
};

await graphClient.Me.Drive.Root.Children
	.Request()
	.AddAsync(children);

```