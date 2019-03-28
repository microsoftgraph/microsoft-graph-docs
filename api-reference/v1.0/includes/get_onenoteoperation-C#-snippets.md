
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var operations = await graphClient.Me.Onenote.Operations["{id}"]
	.Request()
	.GetAsync();

```