
```CS

GraphServiceClient graphClient = new GraphServiceClient();

//create instance of ItemBody
var body = new ItemBody
{
	ContentType = "html",
	Content = "Hello World",
};

//create instance of ChatMessage
var replies = new ChatMessage
{
	Body = body,
};

await graphClient.Teams["{id}"].Channels["{id}"].Messages["{id}"].Replies
	.Request()
	.AddAsync(replies);

```