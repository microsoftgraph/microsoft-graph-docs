
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var memberOf = await graphClient.Devices["{id}"].MemberOf
	.Request()
	.GetAsync();

```