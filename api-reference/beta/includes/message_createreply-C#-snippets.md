
```CS

GraphServiceClient graphClient = new GraphServiceClient();

//create instance of EmailAddress
var emailAddress = new EmailAddress
{
	Address = "randiw@contoso.onmicrosoft.com",
	Name = "Randi Welch",
};

//create instance of EmailAddress
var emailAddressVar = new EmailAddress
{
	Address = "samanthab@contoso.onmicrosoft.com",
	Name = "Samantha Booth",
};

//create Recipient list and populate it
var toRecipients = new List<Recipient>();
toRecipients.Add(new Recipient(emailAddressVar));
toRecipients.Add(new Recipient(emailAddress));

//create instance of Message
var message = new Message
{
	ToRecipients = toRecipients,
};

var comment = "Samantha, Randi, would you name the group if the project is approved, please?";

await graphClient.Me.Messages["AAMkADA1MTAAAAqldOAAA="]
	.createReply(message,comment);
	.Request()
	.PostAsync()

```