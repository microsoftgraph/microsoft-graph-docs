
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var transitiveMemberOf = await graphClient.Groups["{id}"].TransitiveMemberOf
	.Request()
	.GetAsync();

```