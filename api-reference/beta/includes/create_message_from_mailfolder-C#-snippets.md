
```CS

GraphServiceClient graphClient = new GraphServiceClient();

//create instance of ItemBody
var body = new ItemBody
{
	ContentType = "",
	Content = "content-value",
};

//create instance of Message
var messages = new Message
{
	ReceivedDateTime = "2016-10-19T10:37:00Z",
	SentDateTime = "2016-10-19T10:37:00Z",
	HasAttachments = true,
	Subject = "subject-value",
	Body = body,
	BodyPreview = "bodyPreview-value",
};

await graphClient.Me.MailFolders["{id}"].Messages
	.Request()
	.AddAsync(messages);

```