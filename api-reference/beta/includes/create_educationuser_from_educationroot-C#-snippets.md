
```CS

GraphServiceClient graphClient = new GraphServiceClient();

//create instance of PhysicalAddress
var residenceAddress = new PhysicalAddress
{
	City = "Los Angeles",
	CountryOrRegion = "United States",
	PostalCode = "98055",
	State = "CA",
	Street = "12345 Main St.",
};

//create instance of PhysicalAddress
var mailingAddress = new PhysicalAddress
{
	City = "Los Angeles",
	CountryOrRegion = "United States",
	PostalCode = "98055",
	State = "CA",
	Street = "12345 Main St.",
};

//create instance of Identity
var user = new Identity
{
	DisplayName = "Susana Rocha",
	Id = "14012",
};

//create instance of IdentitySet
var createdBy = new IdentitySet
{
	User = user,
};

//create instance of EducationUser
var users = new EducationUser
{
	DisplayName = "Dion Matheson",
	GivenName = "Dion",
	MiddleName = null,
	Surname = "Matheson",
	Mail = "DionM@contoso.com",
	MobilePhone = "+1 (253) 555-0101",
	CreatedBy = createdBy,
	ExternalSource = "sis",
	MailingAddress = mailingAddress,
	PrimaryRole = "student",
	ResidenceAddress = residenceAddress,
};

await graphClient.Education.Users
	.Request()
	.AddAsync(users);

```