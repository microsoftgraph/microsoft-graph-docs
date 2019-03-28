
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var messages = await graphClient.Me.Messages["AAMkADYAAAImV_lAAA="]
	.Request()
	.GetAsync();

```