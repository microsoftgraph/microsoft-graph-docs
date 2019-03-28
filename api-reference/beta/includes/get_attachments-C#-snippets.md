
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var attachments = await graphClient.Groups["{id}"].Threads["{id}"].Posts["{id}"].Attachments
	.Request()
	.GetAsync();

```