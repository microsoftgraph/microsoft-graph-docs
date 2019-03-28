
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var participants = await graphClient.App.Calls["{id}"].Participants["{id}"]
	.Request()
	.GetAsync();

```