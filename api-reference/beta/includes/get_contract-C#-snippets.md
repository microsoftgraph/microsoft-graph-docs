
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var contracts = await graphClient.Contracts
	.Request()
	.GetAsync();

```