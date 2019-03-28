
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var shift = "shift-value";

await graphClient.Me.Drive.Items["{id}"].Workbook.Names["{name}"]
	.range();
	.insert(shift);
	.Request()
	.PostAsync()

```