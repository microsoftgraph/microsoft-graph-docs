---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var personAward = new PersonAward
{
	IssuingAuthority = "International Association of Branding Management",
	ThumbnailUrl = "https://iabm.io/sdhdfhsdhshsd.jpg"
};

await graphClient.Users["{user-id}"].Profile.Awards["{personAward-id}"]
	.Request()
	.UpdateAsync(personAward);

```