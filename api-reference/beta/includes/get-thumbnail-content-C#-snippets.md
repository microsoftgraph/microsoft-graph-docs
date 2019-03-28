
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var content = await graphClient.Me.Drive.Items["{item-id}"].Thumbnails["{thumb-id}"].{size}.Content
	.Request()
	.GetAsync();

```