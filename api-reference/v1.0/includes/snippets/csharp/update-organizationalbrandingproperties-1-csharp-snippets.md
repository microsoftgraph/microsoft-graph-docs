---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var organizationalBranding = new OrganizationalBranding
{
	SignInPageText = "Default",
	UsernameHintText = "DefaultHint"
};

await graphClient.Organization["{organization-id}"].Branding
	.Request()
	.UpdateAsync(organizationalBranding);

```