
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var children = await graphClient.Me.Drive.Special["{special-folder-name}"].Children
	.Request()
	.GetAsync();

```