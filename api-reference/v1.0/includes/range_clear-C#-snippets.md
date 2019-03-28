
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var applyTo = "applyTo-value";

await graphClient.Me.Drive.Items["{id}"].Workbook.Names["{name}"]
	.range();
	.clear(applyTo);
	.Request()
	.PostAsync()

```