
```CS

GraphServiceClient graphClient = new GraphServiceClient();

await graphClient.Domains["{domain-name}"]
	.verify();
	.Request()
	.PostAsync()

```