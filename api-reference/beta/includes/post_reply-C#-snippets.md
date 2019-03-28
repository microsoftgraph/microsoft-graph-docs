
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var id = "id-value";

var isInline = True;

var size = 99;

var contentType = "contentType-value";

var name = "name-value";

var lastModifiedDateTime = 10/19/2016 10:37:00 AM;

//create Attachment list and populate it
var attachments = new List<Attachment>();
attachments.Add(new Attachment(lastModifiedDateTime,name,contentType,size,isInline,id));

//create instance of Post
var inReplyTo = new Post
{
};

//create Post list and populate it
var categories = new List<Post>();

//create instance of EmailAddress
var emailAddress = new EmailAddress
{
	Name = "name-value",
	Address = "address-value",
};

//create Recipient list and populate it
var newParticipants = new List<Recipient>();
newParticipants.Add(new Recipient(emailAddress));

//create instance of EmailAddress
var emailAddress = new EmailAddress
{
	Name = "name-value",
	Address = "address-value",
};

//create instance of Recipient
var sender = new Recipient
{
	EmailAddress = emailAddress,
};

//create instance of EmailAddress
var emailAddress = new EmailAddress
{
	Name = "name-value",
	Address = "address-value",
};

//create instance of Recipient
var from = new Recipient
{
	EmailAddress = emailAddress,
};

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
	ReceivedDateTime = "2016-10-19T10:37:00Z",
	HasAttachments = true,
	From = from,
	Sender = sender,
	ConversationThreadId = "conversationThreadId-value",
	NewParticipants = newParticipants,
	ConversationId = "conversationId-value",
	CreatedDateTime = "2016-10-19T10:37:00Z",
	LastModifiedDateTime = "2016-10-19T10:37:00Z",
	ChangeKey = "changeKey-value",
	Categories = categories,
	Id = "id-value",
	InReplyTo = inReplyTo,
	Attachments = attachments,
};

await graphClient.Groups["{id}"].Threads["{id}"].Posts["{id}"]
	.reply(post);
	.Request()
	.PostAsync()

```