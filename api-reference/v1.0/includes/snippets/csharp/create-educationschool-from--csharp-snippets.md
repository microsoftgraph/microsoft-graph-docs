---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var educationSchool = new EducationSchool
{
	DisplayName = "String",
	Description = "String",
	ExternalSource = EducationExternalSource.Sis,
	ExternalSourceDetail = "String",
	PrincipalEmail = "String",
	PrincipalName = "String",
	ExternalPrincipalId = "String",
	LowestGrade = "String",
	HighestGrade = "String",
	SchoolNumber = "String",
	ExternalId = "String",
	Phone = "String",
	Fax = "String",
	CreatedBy = new IdentitySet
	{
	},
	Address = new PhysicalAddress
	{
	}
};

await graphClient.Education.Schools
	.Request()
	.AddAsync(educationSchool);

```