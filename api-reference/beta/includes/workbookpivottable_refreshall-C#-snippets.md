
```CS

GraphServiceClient graphClient = new GraphServiceClient();

await graphClient.Drive.Root.Workbook.Worksheets["{id}"].PivotTables
	.refreshAll();
	.Request()
	.PostAsync()

```