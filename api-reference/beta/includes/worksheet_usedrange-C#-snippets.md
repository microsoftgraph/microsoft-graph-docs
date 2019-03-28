
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var UsedRange = await graphClient.Me.Drive.Items["{id}"].Workbook.Worksheets["{id|name}"].UsedRange(true)
	.Request()
	.GetAsync();

```