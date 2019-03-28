
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var domains = await graphClient.Domains
	.Request()
	.GetAsync();

```