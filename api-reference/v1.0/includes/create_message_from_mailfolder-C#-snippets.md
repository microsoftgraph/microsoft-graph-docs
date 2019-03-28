
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
	ReceivedDateTime = "datetime-value",
	SentDateTime = "datetime-value",
	HasAttachments = true,
	Subject = "subject-value",
	Body = body,
	BodyPreview = "bodyPreview-value",
};

await graphClient.Me.MailFolders["{id}"].Messages
	.Request()
	.AddAsync(messages);

```