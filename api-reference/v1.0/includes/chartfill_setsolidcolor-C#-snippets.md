
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var color = "color-value";

await graphClient.Me.Drive.Items["{id}"].Workbook.Worksheets["{id|name}"].Charts["{name}"].Format.Fill
	.setSolidColor(color);
	.Request()
	.PostAsync()

```