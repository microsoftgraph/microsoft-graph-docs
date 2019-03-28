
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var items = await graphClient.Me.Drive.Items["{item-id}"]
	.Request()
	.GetAsync();

```