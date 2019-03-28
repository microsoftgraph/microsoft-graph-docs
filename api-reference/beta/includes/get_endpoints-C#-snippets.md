
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var endpoints = await graphClient.Groups["{id}"].Endpoints
	.Request()
	.GetAsync();

```