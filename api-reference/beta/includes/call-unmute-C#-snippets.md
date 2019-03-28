
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var clientContext = "clientContext-value";

await graphClient.App.Calls["{id}"]
	.unmute(clientContext);
	.Request()
	.PostAsync()

```