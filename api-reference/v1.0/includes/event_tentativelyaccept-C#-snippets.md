
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var comment = "comment-value";

var sendResponse = True;

await graphClient.Me.Events["{id}"]
	.tentativelyAccept(comment,sendResponse);
	.Request()
	.PostAsync()

```