---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var organization = new Organization
{
	MarketingNotificationEmails = new List<String>()
	{
		"marketing@contoso.com"
	},
	PrivacyProfile = new PrivacyProfile
	{
		ContactEmail = "alice@contoso.com",
		StatementUrl = "https://contoso.com/privacyStatement"
	},
	SecurityComplianceNotificationMails = new List<String>()
	{
		"security@contoso.com"
	},
	SecurityComplianceNotificationPhones = new List<String>()
	{
		"(123) 456-7890"
	},
	TechnicalNotificationMails = new List<String>()
	{
		"tech@contoso.com"
	}
};

await graphClient.Organization["{id}"]
	.Request()
	.UpdateAsync(organization);

```