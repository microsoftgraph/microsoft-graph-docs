
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var domains = await graphClient.Domains["contoso.com"]
	.Request()
	.GetAsync();

```