
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var destinationId = "destinationId-value";

await graphClient.Me.MailFolders["{id}"]
	.copy(destinationId);
	.Request()
	.PostAsync()

```