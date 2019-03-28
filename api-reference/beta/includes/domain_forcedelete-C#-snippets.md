
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var disableUserAccounts = True;

await graphClient.Domains["contoso.com"]
	.forceDelete(disableUserAccounts);
	.Request()
	.PostAsync()

```