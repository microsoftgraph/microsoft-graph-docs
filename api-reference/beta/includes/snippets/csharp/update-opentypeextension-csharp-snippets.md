---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var extension = new OpenTypeExtension
{
	ExtensionName = "Com.Contoso.Estimate",
	AdditionalData = new Dictionary<string, object>()
	{
		{"companyName", "Contoso"},
		{"expirationDate", "2016-07-30T11:00:00Z"},
		{"DealValue", "1010100"},
		{"topPicks", "[\"Employees only\",\"Add spouse or guest\",\"Add family\"]"}
	}
};

await graphClient.Groups["37df2ff0-0de0-4c33-8aee-75289364aef6"].Threads["AAQkADJizZJpEWwqDHsEpV_KA=="].Posts["AAMkADJiUg96QZUkA-ICwMubAADDEd7UAAA="].Extensions["Microsoft.OutlookServices.OpenTypeExtension.Com.Contoso.Estimate"]
	.Request()
	.UpdateAsync(extension);

```