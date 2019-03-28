
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var registeredOwners = await graphClient.Devices["{id}"].RegisteredOwners
	.Request()
	.GetAsync();

```