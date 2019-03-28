
```CS

GraphServiceClient graphClient = new GraphServiceClient();

//create instance of EmailAddress
var mentioned = new EmailAddress
{
	Name = "Dana Swope",
	Address = "danas@contoso.onmicrosoft.com",
};

//create Mention list and populate it
var mentions = new List<Mention>();
mentions.Add(new Mention(mentioned));

//create instance of EmailAddress
var emailAddress = new EmailAddress
{
	Name = "Samantha Booth",
	Address = "samanthab@contoso.onmicrosoft.com",
};

//create Recipient list and populate it
var toRecipients = new List<Recipient>();
toRecipients.Add(new Recipient(emailAddress));

//create instance of Message
var messages = new Message
{
	Subject = "Party planning",
	ToRecipients = toRecipients,
	Mentions = mentions,
};

await graphClient.Me.Messages
	.Request()
	.AddAsync(messages);

```