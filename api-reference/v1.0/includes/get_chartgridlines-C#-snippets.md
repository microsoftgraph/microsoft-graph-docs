
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var minorGridlines = await graphClient.Me.Drive.Items["{id}"].Workbook.Worksheets["{id|name}"].Charts["{name}"].Axes.ValueAxis.MinorGridlines
	.Request()
	.GetAsync();

```