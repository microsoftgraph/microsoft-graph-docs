
```CS

GraphServiceClient graphClient = new GraphServiceClient();

await graphClient.Drives["{drive-id}"].Items["{item-id}"]
	.checkout();
	.Request()
	.PostAsync()

```