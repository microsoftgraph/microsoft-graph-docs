
```CS

GraphServiceClient graphClient = new GraphServiceClient();

await graphClient.Me.Drive.Root.Workbook.Worksheets["{id}"].PivotTables
	.refreshAll();
	.Request()
	.PostAsync()

```