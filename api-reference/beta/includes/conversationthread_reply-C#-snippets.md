
```CS

GraphServiceClient graphClient = new GraphServiceClient();

//create instance of ItemBody
var body = new ItemBody
{
	ContentType = "",
	Content = "content-value",
};

//create instance of Post
var post = new Post
{
	Body = body,
};

await graphClient.Groups["{id}"].Threads["{id}"]
	.reply(post);
	.Request()
	.PostAsync()

```