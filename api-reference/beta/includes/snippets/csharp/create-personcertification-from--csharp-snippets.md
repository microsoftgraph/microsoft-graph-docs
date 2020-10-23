---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var personCertification = new PersonCertification
{
	CertificationId = "KB-1235466333663322",
	Description = "Blackbelt in Marketing - Brand Management",
	DisplayName = "Marketing Blackbelt - Brand Management",
	ThumbnailUrl = "https://iame.io/dfhdfdfd334.jpg",
	WebUrl = "https://www.iame.io/blackbelt"
};

await graphClient.Me.Profile.Certifications
	.Request()
	.AddAsync(personCertification);

```