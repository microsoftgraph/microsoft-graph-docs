
```CS

GraphServiceClient graphClient = new GraphServiceClient();

//create instance of ItemBody
var body = new ItemBody
{
	ContentType = "html",
	Content = "this is body content",
};

//create Post list and populate it
var posts = new List<Post>();
posts.Add(new Post(body));

//create instance of ConversationThread
var threads = new ConversationThread
{
	Topic = "topic-value",
	Posts = posts,
};

await graphClient.Groups["{id}"].Conversations["{id}"].Threads
	.Request()
	.AddAsync(threads);

```