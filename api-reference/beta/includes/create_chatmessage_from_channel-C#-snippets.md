
```CS

GraphServiceClient graphClient = new GraphServiceClient();

//create instance of Identity
var user = new Identity
{
	DisplayName = "Jane Smith",
	Id = "ef1c916a-3135-4417-ba27-8eb7bd084193",
	UserIdentityType = "aadUser",
};

//create instance of IdentitySet
var mentioned = new IdentitySet
{
	User = user,
};

var mentionText = "Jane Smith";

var id = 0;

//create ChatMessageMention list and populate it
var mentions = new List<ChatMessageMention>();
mentions.Add(new ChatMessageMention(id,mentionText,mentioned));

//create instance of ItemBody
var body = new ItemBody
{
	ContentType = "html",
	Content = "Hello World <at id=\"0\">Jane Smith</at>",
};

//create instance of ChatMessage
var messages = new ChatMessage
{
	Body = body,
	Mentions = mentions,
};

await graphClient.Teams["{id}"].Channels["{id}"].Messages
	.Request()
	.AddAsync(messages);

```