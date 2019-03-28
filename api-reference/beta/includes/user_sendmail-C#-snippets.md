
```CS

GraphServiceClient graphClient = new GraphServiceClient();

//create instance of EmailAddress
var emailAddress = new EmailAddress
{
	Address = "danas@contoso.onmicrosoft.com",
};

//create Recipient list and populate it
var ccRecipients = new List<Recipient>();
ccRecipients.Add(new Recipient(emailAddress));

//create instance of EmailAddress
var emailAddress = new EmailAddress
{
	Address = "samanthab@contoso.onmicrosoft.com",
};

//create Recipient list and populate it
var toRecipients = new List<Recipient>();
toRecipients.Add(new Recipient(emailAddress));

//create instance of ItemBody
var body = new ItemBody
{
	ContentType = "Text",
	Content = "The new cafeteria is open.",
};

//create instance of Message
var message = new Message
{
	Subject = "Meet for lunch?",
	Body = body,
	ToRecipients = toRecipients,
	CcRecipients = ccRecipients,
};

var saveToSentItems = "false";

await graphClient.Me
	.sendMail(message,saveToSentItems);
	.Request()
	.PostAsync()

```