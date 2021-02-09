---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Organization["d69179bf-f4a4-41a9-a9de-249c0f2efb1d"].Branding.Localizations["fr"]
	.Request()
	.DeleteAsync();

```