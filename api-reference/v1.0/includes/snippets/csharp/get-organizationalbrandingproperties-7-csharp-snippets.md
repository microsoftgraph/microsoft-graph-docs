---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var organizationalBrandingLocalization = new OrganizationalBrandingLocalization
{
	BackgroundColor = "#00000F",
	Id = "fr"
};

await graphClient.Organization["{organization-id}"].Branding.Localizations
	.Request()
	.AddAsync(organizationalBrandingLocalization);

```