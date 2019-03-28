
```CS

GraphServiceClient graphClient = new GraphServiceClient();

await graphClient.Me.Drive.Items["{id}"].Workbook.Names["{name}"]
	.range();
	.unmerge();
	.Request()
	.PostAsync()

```