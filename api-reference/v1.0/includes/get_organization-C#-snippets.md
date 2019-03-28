
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var organization = await graphClient.Organization
	.Request()
	.GetAsync();

```