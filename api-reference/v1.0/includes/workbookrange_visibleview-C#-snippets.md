
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var visibleView = await graphClient.Me.Drive.Root.Workbook.Worksheets["{id}"].Range('A1:Z10').VisibleView()
	.Request()
	.GetAsync();

```