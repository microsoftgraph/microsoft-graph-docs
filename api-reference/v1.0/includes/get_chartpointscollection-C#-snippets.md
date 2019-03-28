
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var points = await graphClient.Me.Drive.Items["{id}"].Workbook.Worksheets["{id|name}"].Charts["{name}"].Series["{series-id}"].Points
	.Request()
	.GetAsync();

```