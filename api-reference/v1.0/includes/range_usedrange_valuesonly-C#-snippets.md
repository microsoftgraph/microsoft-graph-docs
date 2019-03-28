
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var usedRange = await graphClient.Me.Drive.Items["{id}"].Workbook.Names["{name}"].Range().UsedRange(true)
	.Request()
	.GetAsync();

```