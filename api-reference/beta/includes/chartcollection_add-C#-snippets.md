
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var type = "ColumnStacked";

var sourceData = "A1:B1";

var seriesBy = "Auto";

await graphClient.Me.Drive.Items["{id}"].Workbook.Worksheets["{id|name}"].Charts
	.add(type,sourceData,seriesBy);
	.Request()
	.PostAsync()

```