
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var line = await graphClient.Me.Drive.Items["{id}"].Workbook.Worksheets["{id|name}"].Charts["{name}"].Axes.SeriesAxis.Format.Line
	.Request()
	.GetAsync();

```