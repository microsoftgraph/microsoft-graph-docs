
```CS

GraphServiceClient graphClient = new GraphServiceClient();

await graphClient.Me.Drive.Root.Workbook.Worksheets["{id}"]
	.range();
	.rowsAbove();
	.Request()
	.PostAsync()

```