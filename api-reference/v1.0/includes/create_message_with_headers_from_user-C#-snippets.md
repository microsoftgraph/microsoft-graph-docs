
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var value = "WA001";

var name = "x-custom-header-group-id";

var valueVar = "Washington";

var nameVar = "x-custom-header-group-nameVar";

//create InternetMessageHeader list and populate it
var internetMessageHeaders = new List<InternetMessageHeader>();
internetMessageHeaders.Add(new InternetMessageHeader(nameVar,valueVar));
internetMessageHeaders.Add(new InternetMessageHeader(name,value));

//create instance of EmailAddress
var emailAddress = new EmailAddress
{
	Address = "AlexW@contoso.OnMicrosoft.com",
};

//create Recipient list and populate it
var toRecipients = new List<Recipient>();
toRecipients.Add(new Recipient(emailAddress));

//create instance of ItemBody
var body = new ItemBody
{
	ContentType = "HTML",
	Content = "The group represents Washington.",
};

//create instance of Message
var messages = new Message
{
	Subject = "9/8/2018: concert",
	Body = body,
	ToRecipients = toRecipients,
	InternetMessageHeaders = internetMessageHeaders,
};

await graphClient.Me.Messages
	.Request()
	.AddAsync(messages);

```