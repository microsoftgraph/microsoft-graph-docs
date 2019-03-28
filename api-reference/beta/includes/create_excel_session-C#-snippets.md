
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var persistChanges = True;

await graphClient.Me.Drive.Items["{id}"].Workbook
	.createSession(this,persistChanges);
	.Request()
	.PostAsync()

```