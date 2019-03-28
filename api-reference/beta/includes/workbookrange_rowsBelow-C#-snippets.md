
```CS

GraphServiceClient graphClient = new GraphServiceClient();

await graphClient.Drive.Root.Workbook.Worksheets["{id}"]
	.range();
	.rowsBelow(count);
	.Request()
	.PostAsync()

```