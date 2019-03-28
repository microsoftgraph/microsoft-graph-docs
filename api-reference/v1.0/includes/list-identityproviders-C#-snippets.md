
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var identityProviders = await graphClient.IdentityProviders
	.Request()
	.GetAsync();

```