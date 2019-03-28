
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var analytics = await graphClient.Drives["{drive-id}"].Items["{item-id}"].Analytics
	.Request()
	.GetAsync();

```