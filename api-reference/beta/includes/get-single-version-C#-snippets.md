
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var versions = await graphClient.Me.Drive.Items["{item-id}"].Versions["{version-id}"]
	.Request()
	.GetAsync();

```