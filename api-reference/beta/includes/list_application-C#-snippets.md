
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var applications = await graphClient.Applications
	.Request()
	.GetAsync();

```