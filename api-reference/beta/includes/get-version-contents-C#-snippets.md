
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var content = await graphClient.Me.Drive.Items["{item-id}"].Versions["{version-id}"].Content
	.Request()
	.GetAsync();

```