
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var users = await graphClient.Users
	.Request()
	.Select("displayName,givenName,postalCode")
	.GetAsync();

```