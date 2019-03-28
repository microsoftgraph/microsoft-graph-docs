
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var domainNameReferences = await graphClient.Domains["{domain-name}"].DomainNameReferences
	.Request()
	.GetAsync();

```