
```CS

GraphServiceClient graphClient = new GraphServiceClient();

//create instance of EmailAddress
var emailAddress = new EmailAddress
{
	Address = "AdeleV@contoso.onmicrosoft.com",
};

//create Recipient list and populate it
var toRecipients = new List<Recipient>();
toRecipients.Add(new Recipient(emailAddress));

//create instance of ItemBody
var body = new ItemBody
{
	ContentType = "HTML",
	Content = "They were <b>awesome</b>!",
};

//create instance of Message
var messages = new Message
{
	Subject = "Did you see last night's game?",
	Importance = "Low",
	Body = body,
	ToRecipients = toRecipients,
};

await graphClient.Me.Messages
	.Request()
	.AddAsync(messages);

```