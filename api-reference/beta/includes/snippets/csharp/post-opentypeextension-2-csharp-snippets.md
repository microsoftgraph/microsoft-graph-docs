---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var extension = new OpenTypeExtension
{
	ExtensionName = "Com.Contoso.Referral",
	AdditionalData = new Dictionary<string, object>()
	{
		{"companyName", "Wingtip Toys"},
		{"dealValue", "500050"},
		{"expirationDate", "2015-12-03T10:00:00Z"}
	}
};

await graphClient.Me.Messages["AAMkAGE1M2IyNGNmLTI5MTktNDUyZi1iOTVl==="].Extensions
	.Request()
	.AddAsync(extension);

```