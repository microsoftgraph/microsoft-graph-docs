---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var educationClass = new EducationClass
{
	Description = "Health Level 1",
	ClassCode = "Health 501",
	DisplayName = "Health 1",
	ExternalId = "11019",
	ExternalName = "Health Level 1",
	ExternalSource = EducationExternalSource.Sis,
	MailNickname = "fineartschool.net"
};

await graphClient.Education.Classes
	.Request()
	.AddAsync(educationClass);

```