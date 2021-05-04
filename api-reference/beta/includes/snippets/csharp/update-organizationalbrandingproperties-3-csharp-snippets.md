---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var organizationalBranding = new OrganizationalBranding
{
	BackgroundColor = "#FFFF33"
};

await graphClient.Organization["{organization-id}"].Branding
	.Request()
	.UpdateAsync(organizationalBranding);

```