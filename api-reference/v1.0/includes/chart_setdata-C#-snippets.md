
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var sourceData = "sourceData-value";

var seriesBy = "seriesBy-value";

await graphClient.Me.Drive.Items["{id}"].Workbook.Worksheets["{id|name}"].Charts["{name}"]
	.setData(sourceData,seriesBy);
	.Request()
	.PostAsync()

```