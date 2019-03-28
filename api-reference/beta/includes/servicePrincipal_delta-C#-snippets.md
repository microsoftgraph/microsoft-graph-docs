
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var delta = await graphClient.ServicePrincipals.Delta()
	.Request()
	.GetAsync();

```