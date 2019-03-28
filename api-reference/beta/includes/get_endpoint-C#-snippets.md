
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var endpoints = await graphClient.Groups["{id}"].Endpoints["{id}"]
	.Request()
	.GetAsync();

```