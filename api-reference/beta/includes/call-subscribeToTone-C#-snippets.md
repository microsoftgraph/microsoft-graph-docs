
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var clientContext = "d45324c1-fcb5-430a-902c-f20af696537c";

await graphClient.App.Calls["{id}"]
	.subscribeToTone(clientContext);
	.Request()
	.PostAsync()

```