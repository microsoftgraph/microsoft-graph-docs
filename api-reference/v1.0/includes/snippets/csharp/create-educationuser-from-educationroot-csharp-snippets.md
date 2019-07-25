---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var educationUser = new EducationUser
{
	DisplayName = "Dion Matheson",
	GivenName = "Dion",
	MiddleName = null,
	Surname = "Matheson",
	Mail = "DionM@contoso.com",
	MobilePhone = "+1 (253) 555-0101",
	CreatedBy = new IdentitySet
	{
		User = new Identity
		{
			DisplayName = "Susana Rocha",
			Id = "14012"
		}
	},
	ExternalSource = EducationExternalSource.Sis,
	MailingAddress = new PhysicalAddress
	{
		City = "Los Angeles",
		CountryOrRegion = "United States",
		PostalCode = "98055",
		State = "CA",
		Street = "12345 Main St."
	},
	PrimaryRole = EducationUserRole.Student,
	ResidenceAddress = new PhysicalAddress
	{
		City = "Los Angeles",
		CountryOrRegion = "United States",
		PostalCode = "98055",
		State = "CA",
		Street = "12345 Main St."
	}
};

await graphClient.Education.Users
	.Request()
	.AddAsync(educationUser);

```