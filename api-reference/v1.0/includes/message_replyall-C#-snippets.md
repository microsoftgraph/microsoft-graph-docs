
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var comment = "comment-value";

await graphClient.Me.Messages["{id}"]
	.replyAll(comment);
	.Request()
	.PostAsync()

```