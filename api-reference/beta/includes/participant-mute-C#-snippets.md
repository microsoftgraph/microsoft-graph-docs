
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var clientContext = "clientContext-value";

await graphClient.App.Calls["{id}"].Participants["{id}"]
	.mute(clientContext);
	.Request()
	.PostAsync()

```