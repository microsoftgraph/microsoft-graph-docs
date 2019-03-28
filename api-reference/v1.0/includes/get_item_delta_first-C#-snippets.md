
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var delta = await graphClient.Me.Drive.Root.Delta()
	.Request()
	.GetAsync();

```