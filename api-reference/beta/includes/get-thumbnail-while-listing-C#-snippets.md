
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var children = await graphClient.Me.Drive.Items["{item-id}"].Children
	.Request()
	.Expand("thumbnails")
	.GetAsync();

```