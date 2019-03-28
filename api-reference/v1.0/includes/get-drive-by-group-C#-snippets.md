
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var drive = await graphClient.Groups["{groupId}"].Drive
	.Request()
	.GetAsync();

```