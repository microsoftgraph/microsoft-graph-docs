
```CS

GraphServiceClient graphClient = new GraphServiceClient();

//create instance of EmailAddress
var emailAddress = new EmailAddress
{
	Address = "danas@contoso.onmicrosoft.com",
	Name = "Dana Swope",
};

//create Recipient list and populate it
var toRecipients = new List<Recipient>();
toRecipients.Add(new Recipient(emailAddress));

//create instance of Message
var message = new Message
{
	IsDeliveryReceiptRequested = true,
	ToRecipients = toRecipients,
};

var comment = "Dana, just want to make sure you get this; you'll need this if the project gets approved.";

await graphClient.Me.Messages["AAMkADA1MTAAAH5JaLAAA="]
	.createForward(message,comment,toRecipients);
	.Request()
	.PostAsync()

```