---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var userAccountInformation = new UserAccountInformation
{
	AgeGroup = "ageGroup-value",
	CountryCode = "countryCode-value",
	PreferredLanguageTag = new LocaleInfo
	{
		Locale = "locale-value",
		DisplayName = "displayName-value"
	},
	UserPrincipalName = "userPrincipalName-value"
};

await graphClient.Me.Profile.Account["{id}"]
	.Request()
	.UpdateAsync(userAccountInformation);

```