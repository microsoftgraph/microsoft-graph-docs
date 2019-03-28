
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var photos = await graphClient.Groups["{id}"].Photos
	.Request()
	.GetAsync();

```