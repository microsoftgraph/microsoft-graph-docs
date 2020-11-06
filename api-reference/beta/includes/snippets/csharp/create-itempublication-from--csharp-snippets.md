---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var itemPublication = new ItemPublication
{
	Description = "One persons journey to the top of the branding management field.",
	DisplayName = "Got Brands? The story of Innocenty Popov and his journey to the top.",
	PublishedDate = new Date(1900,1,1),
	Publisher = "International Association of Branding Management Publishing",
	ThumbnailUrl = "https://iabm.io/sdhdfhsdhshsd.jpg",
	WebUrl = "https://www.iabm.io"
};

await graphClient.Me.Profile.Publications
	.Request()
	.AddAsync(itemPublication);

```