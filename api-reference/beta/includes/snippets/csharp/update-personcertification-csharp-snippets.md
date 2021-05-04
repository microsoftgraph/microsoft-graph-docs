---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var personCertification = new PersonCertification
{
	IssuingAuthority = "International Academy of Marketing Excellence",
	IssuingCompany = "International Academy of Marketing Excellence"
};

await graphClient.Users["{user-id}"].Profile.Certifications["{personCertification-id}"]
	.Request()
	.UpdateAsync(personCertification);

```