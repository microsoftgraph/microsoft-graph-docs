
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var delta = await graphClient.Applications.Delta()
	.Request()
	.GetAsync();

```