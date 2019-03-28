
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var column = await graphClient.Me.Drive.Items["{id}"].Workbook.Names["{name}"].Range().Column(5)
	.Request()
	.GetAsync();

```