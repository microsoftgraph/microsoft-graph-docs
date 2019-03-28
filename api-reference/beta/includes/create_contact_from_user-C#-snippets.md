
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var type = "business";

var number = "+1 732 555 0102";

//create Phone list and populate it
var phones = new List<Phone>();
phones.Add(new Phone(number,type));

var otherLabel = "Volunteer work";

var type = "other";

var name = "Pavel Bansky";

var address = "pavelb@fabrikam.onmicrosoft.com";

var typeVar = "personal";

var nameVar = "Pavel Bansky";

var addressVar = "pavelb@contoso.onmicrosoft.com";

//create TypedEmailAddress list and populate it
var emailAddresses = new List<TypedEmailAddress>();
emailAddresses.Add(new TypedEmailAddress(addressVar,nameVar,typeVar));
emailAddresses.Add(new TypedEmailAddress(address,name,type,otherLabel));

//create instance of Contact
var contacts = new Contact
{
	GivenName = "Pavel",
	Surname = "Bansky",
	EmailAddresses = emailAddresses,
	Phones = phones,
};

await graphClient.Me.Contacts
	.Request()
	.AddAsync(contacts);

```