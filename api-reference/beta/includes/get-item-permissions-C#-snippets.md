
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var permissions = await graphClient.Me.Drive.Items["{item-id}"].Permissions
	.Request()
	.GetAsync();

```