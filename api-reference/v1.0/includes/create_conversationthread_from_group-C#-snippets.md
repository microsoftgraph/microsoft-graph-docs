
```CS

GraphServiceClient graphClient = new GraphServiceClient();

//create instance of EmailAddress
var emailAddress = new EmailAddress
{
	Name = "Alex Darrow",
	Address = "alexd@contoso.com",
};

//create Recipient list and populate it
var newParticipants = new List<Recipient>();
newParticipants.Add(new Recipient(emailAddress));

//create instance of ItemBody
var body = new ItemBody
{
	ContentType = "html",
	Content = "this is body content",
};

//create Post list and populate it
var posts = new List<Post>();
posts.Add(new Post(body,newParticipants));

//create instance of ConversationThread
var threads = new ConversationThread
{
	Topic = "New Conversation Thread Topic",
	Posts = posts,
};

await graphClient.Groups["{id}"].Threads
	.Request()
	.AddAsync(threads);

```