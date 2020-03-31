---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var educationSchool = new EducationSchool
{
	DisplayName = "Fabrikam High School",
	Description = "Magnate school for the arts. Los Angeles School District",
	Status = "String",
	ExternalSource = EducationExternalSource.Sis,
	PrincipalEmail = "AmyR@fabrikam.com",
	PrincipalName = "Amy Roebuck",
	ExternalPrincipalId = "14007",
	HighestGrade = "12",
	LowestGrade = "9",
	SchoolNumber = "10002",
	Address = new PhysicalAddress
	{
		City = "Los Angeles",
		CountryOrRegion = "United States",
		PostalCode = "98055",
		State = "CA",
		Street = "12345 Main St."
	},
	ExternalId = "10002",
	Phone = "+1 (253) 555-0102"
};

await graphClient.Education.Schools
	.Request()
	.AddAsync(educationSchool);

```