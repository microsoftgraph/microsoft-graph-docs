
```CS

GraphServiceClient graphClient = new GraphServiceClient();

//create String list and populate it
var businessPhones = new List<String>();

var name = "Pavel Bansky";

var address = "pavelb@fabrikam.onmicrosoft.com";

//create EmailAddress list and populate it
var emailAddresses = new List<EmailAddress>();
emailAddresses.Add(new EmailAddress(address,name));

//create instance of Contact
var contacts = new Contact
{
	GivenName = "Pavel",
	Surname = "Bansky",
	EmailAddresses = emailAddresses,
	BusinessPhones = businessPhones,
};

await graphClient.Me.Contacts
	.Request()
	.AddAsync(contacts);

```