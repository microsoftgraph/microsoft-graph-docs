---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var userAccountInformation = new UserAccountInformation
{
	AllowedAudiences = AllowedAudiences.Organization,
	CountryCode = "NO"
};

await graphClient.Me.Profile.Account
	.Request()
	.AddAsync(userAccountInformation);

```