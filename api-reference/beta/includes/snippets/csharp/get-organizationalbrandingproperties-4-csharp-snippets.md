---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var organizationalBranding = await graphClient.Organization["{organization-id}"].Branding
	.Request()
	.Header("Accept-Language","fr")
	.GetAsync();

```