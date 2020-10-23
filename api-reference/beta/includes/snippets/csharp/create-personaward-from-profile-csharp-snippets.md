---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var personAward = new PersonAward
{
	Description = "Lifetime Achievement award from the International Association of Branding Managers",
	DisplayName = "Lifetime Achievement Award For Excellence in Branding",
	IssuedDate = new Date(1900,1,1),
	IssuingAuthority = "International Association of Branding Management",
	ThumbnailUrl = "https://iabm.io/sdhdfhsdhshsd.jpg",
	WebUrl = "https://www.iabm.io"
};

await graphClient.Me.Profile.Awards
	.Request()
	.AddAsync(personAward);

```