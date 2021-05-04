---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var organizationalBrandingLocalization = new OrganizationalBrandingLocalization
{
	BackgroundColor = "#00000F",
	SignInPageText = "fr"
};

await graphClient.Organization["{organization-id}"].Branding.Localizations["{organizationalBrandingLocalization-id}"]
	.Request()
	.PutAsync(organizationalBrandingLocalization);

```