
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var usedRange = await graphClient.Me.Drive.Items["{id}"].Workbook.Worksheets["{id|name}"].UsedRange()
	.Request()
	.GetAsync();

```