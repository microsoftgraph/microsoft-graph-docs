
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var versions = await graphClient.Me.Drive.Items["{item-id}"].Versions
	.Request()
	.GetAsync();

```