
```CS

GraphServiceClient graphClient = new GraphServiceClient();

await graphClient.Sites["{site-id}"].Lists["{list-id}"].Items["{item-id}"].Versions["{version-id}"]
	.restoreVersion();
	.Request()
	.PostAsync()

```