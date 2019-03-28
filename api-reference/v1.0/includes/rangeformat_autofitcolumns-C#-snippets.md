
```CS

GraphServiceClient graphClient = new GraphServiceClient();

await graphClient.Me.Drive.Items["{id}"].Workbook.Names["{name}"]
	.range();.Format
	.autofitColumns();
	.Request()
	.PostAsync()

```