---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var stream = new System.IO.MemoryStream(Encoding.UTF8.GetBytes(@"<Image>
"));

var branding = new OrganizationalBranding();
branding.BannerLogo = stream;

await graphClient.Organization["{organization-id}"].Branding
	.Request()
	.UpdateAsync(branding);

```