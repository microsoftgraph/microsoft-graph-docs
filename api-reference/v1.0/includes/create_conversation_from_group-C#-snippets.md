
```CS

GraphServiceClient graphClient = new GraphServiceClient();

//create instance of EmailAddress
var emailAddress = new EmailAddress
{
	Name = "Adele Vance",
	Address = "AdeleV@contoso.onmicrosoft.com",
};

//create Recipient list and populate it
var newParticipants = new List<Recipient>();
newParticipants.Add(new Recipient(emailAddress));

//create instance of ItemBody
var body = new ItemBody
{
	ContentType = "html",
	Content = "What do we know so far?",
};

//create Post list and populate it
var posts = new List<Post>();
posts.Add(new Post(body,newParticipants));

//create ConversationThread list and populate it
var threads = new List<ConversationThread>();
threads.Add(new ConversationThread(posts));

//create instance of Conversation
var conversations = new Conversation
{
	Topic = "New locations for this quarter",
	Threads = threads,
};

await graphClient.Groups["29981b6a-0e57-42dc-94c9-cd24f5306196"].Conversations
	.Request()
	.AddAsync(conversations);

```