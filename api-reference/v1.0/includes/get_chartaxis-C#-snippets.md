
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var valueAxis = await graphClient.Me.Drive.Items["{id}"].Workbook.Worksheets["{id|name}"].Charts["{name}"].Axes.ValueAxis
	.Request()
	.GetAsync();

```