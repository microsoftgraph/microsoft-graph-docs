
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var dealValue = 10000;

var expirationDate = 12/30/2015 11:00:00 AM;

var companyName = "Wingtip Toys";

var extensionName = "Com.Contoso.Referral";

var @odata.type = "Microsoft.Graph.OpenTypeExtension";

//create Extension list and populate it
var extensions = new List<Extension>();
extensions.Add(new Extension(@odata.type,extensionName,companyName,expirationDate,dealValue));

//create instance of EmailAddress
var emailAddress = new EmailAddress
{
	Address = "rufus@contoso.com",
};

//create Recipient list and populate it
var toRecipients = new List<Recipient>();
toRecipients.Add(new Recipient(emailAddress));

//create instance of ItemBody
var body = new ItemBody
{
	ContentType = "HTML",
	Content = "You should be proud!",
};

//create instance of Message
var messages = new Message
{
	Subject = "Annual review",
	Body = body,
	ToRecipients = toRecipients,
	Extensions = extensions,
};

await graphClient.Me.Messages
	.Request()
	.AddAsync(messages);

```