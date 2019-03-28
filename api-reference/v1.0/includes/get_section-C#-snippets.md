
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var sections = await graphClient.Me.Onenote.Sections["{id}"]
	.Request()
	.GetAsync();

```