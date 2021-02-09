---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var localizations = await graphClient.Organization["d69179bf-f4a4-41a9-a9de-249c0f2efb1d"].Branding.Localizations["en-US"]
	.Request()
	.Select("SignInPageText")
	.GetAsync();

var signInPageText = localizations.SignInPageText;

```