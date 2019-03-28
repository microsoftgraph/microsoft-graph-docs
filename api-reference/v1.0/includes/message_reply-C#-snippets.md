
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var comment = "comment-value";

await graphClient.Me.Messages["{id}"]
	.reply(comment);
	.Request()
	.PostAsync()

```