
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var versions = await graphClient.Sites["{site-id}"].Lists["{list-id}"].Items["{item-id}"].Versions["{version-id}"]
	.Request()
	.GetAsync();

```