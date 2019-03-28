
```CS

GraphServiceClient graphClient = new GraphServiceClient();

await graphClient.Domains["contoso.com"]
	.verify();
	.Request()
	.PostAsync()

```