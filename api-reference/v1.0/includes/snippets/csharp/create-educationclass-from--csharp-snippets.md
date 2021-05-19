---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var educationClass = new EducationClass
{
	DisplayName = "String",
	MailNickname = "String",
	Description = "String",
	CreatedBy = new IdentitySet
	{
	},
	ClassCode = "String",
	ExternalName = "String",
	ExternalId = "String",
	ExternalSource = EducationExternalSource.Sis,
	ExternalSourceDetail = "String",
	Grade = "String",
	Term = new EducationTerm
	{
	}
};

await graphClient.Education.Classes
	.Request()
	.AddAsync(educationClass);

```