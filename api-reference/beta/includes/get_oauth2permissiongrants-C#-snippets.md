
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var oauth2PermissionGrants = await graphClient.ServicePrincipals["{id}"].Oauth2PermissionGrants
	.Request()
	.GetAsync();

```