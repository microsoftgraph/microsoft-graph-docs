
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var content = await graphClient.Drive.Items["{item-id}"].Content
	.Request()
	.GetAsync();

```