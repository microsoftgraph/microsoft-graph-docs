
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var domainNameReferences = await graphClient.Domains["contoso.com"].DomainNameReferences
	.Request()
	.GetAsync();

```