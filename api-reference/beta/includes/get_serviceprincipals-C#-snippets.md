
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var servicePrincipals = await graphClient.ServicePrincipals
	.Request()
	.GetAsync();

```