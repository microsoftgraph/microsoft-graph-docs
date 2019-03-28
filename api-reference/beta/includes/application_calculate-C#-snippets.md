
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var calculationType = "calculationType-value";

await graphClient.Me.Drive.Items["{id}"].Workbook.Application
	.calculate(calculationType);
	.Request()
	.PostAsync()

```