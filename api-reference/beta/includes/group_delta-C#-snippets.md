
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var delta = await graphClient.Groups.Delta()
	.Request()
	.Header("Prefer","return=minimal")
	.Select("displayName,description,mailNickname")
	.GetAsync();

```