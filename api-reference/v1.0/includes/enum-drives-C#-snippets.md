
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var drives = await graphClient.Me.Drives
	.Request()
	.GetAsync();

```