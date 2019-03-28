
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var transitiveMemberOf = await graphClient.Devices["{id}"].TransitiveMemberOf
	.Request()
	.GetAsync();

```