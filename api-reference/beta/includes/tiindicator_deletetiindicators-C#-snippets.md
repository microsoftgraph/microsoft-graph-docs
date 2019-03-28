
```CS

GraphServiceClient graphClient = new GraphServiceClient();

//create String list and populate it
var value = new List<String>();

await graphClient.Security.TiIndicators
	.deleteTiIndicators(value);
	.Request()
	.PostAsync()

```