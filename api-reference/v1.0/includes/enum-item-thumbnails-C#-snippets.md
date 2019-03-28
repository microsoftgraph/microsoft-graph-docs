
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var thumbnails = await graphClient.Me.Drive.Items["{item-id}"].Thumbnails
	.Request()
	.GetAsync();

```