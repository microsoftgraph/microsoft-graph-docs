
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var identityProviders = await graphClient.IdentityProviders["Amazon-OAuth"]
	.Request()
	.GetAsync();

```