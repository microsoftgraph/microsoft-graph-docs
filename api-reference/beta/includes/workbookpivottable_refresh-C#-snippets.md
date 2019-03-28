
```CS

GraphServiceClient graphClient = new GraphServiceClient();

await graphClient.Drive.Root.Workbook.Worksheets["{id}"].PivotTables["{id}"]
	.refresh();
	.Request()
	.PostAsync()

```