
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var webUrl = "webUrl value";

await graphClient.Me.Onenote.Notebooks
	.GetNotebookFromWebUrl(webUrl);
	.Request()
	.PostAsync()

```