
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var members = await graphClient.Groups["{id}"].Members
	.Request()
	.GetAsync();

```