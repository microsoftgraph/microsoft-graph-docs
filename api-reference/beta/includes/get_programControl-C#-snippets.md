
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var programControls = await graphClient.ProgramControls
	.Request()
	.GetAsync();

```