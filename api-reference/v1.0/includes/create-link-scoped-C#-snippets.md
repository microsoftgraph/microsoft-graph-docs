
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var type = "edit";

var scope = "organization";

await graphClient.Me.Drive.Items["{item-id}"]
	.createLink(type,scope);
	.Request()
	.PostAsync()

```