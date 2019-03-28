
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var disableUserAccounts = True;

await graphClient.Domains["{id}"]
	.forceDelete(disableUserAccounts);
	.Request()
	.PostAsync()

```