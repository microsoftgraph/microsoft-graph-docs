
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var name = "name-value";

await graphClient.Me.Drive.Items["{id}"].Workbook.Worksheets
	.add(name);
	.Request()
	.PostAsync()

```