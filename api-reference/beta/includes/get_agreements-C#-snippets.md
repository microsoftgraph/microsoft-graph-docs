
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var agreements = await graphClient.Agreements
	.Request()
	.GetAsync();

```