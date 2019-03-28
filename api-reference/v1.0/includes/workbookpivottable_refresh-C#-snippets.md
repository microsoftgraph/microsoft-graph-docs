
```CS

GraphServiceClient graphClient = new GraphServiceClient();

await graphClient.Me.Drive.Root.Workbook.Worksheets["{id}"].PivotTables["{id}"]
	.refresh();
	.Request()
	.PostAsync()

```