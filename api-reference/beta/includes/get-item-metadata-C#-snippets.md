
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var root = await graphClient.Me.Drive.Root
	.Request()
	.GetAsync();

```