
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var {size} = await graphClient.Me.Drive.Items["{item-id}"].Thumbnails["{thumb-id}"].{size}
	.Request()
	.GetAsync();

```