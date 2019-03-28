
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var transitiveMembers = await graphClient.Groups["{id}"].TransitiveMembers
	.Request()
	.GetAsync();

```