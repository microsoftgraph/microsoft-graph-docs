
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var attachments = await graphClient.Me.Events["{id}"].Attachments["{id}"]
	.Request()
	.GetAsync();

```