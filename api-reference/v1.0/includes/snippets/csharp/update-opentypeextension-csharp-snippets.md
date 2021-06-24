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

await graphClient.Groups["{group-id}"].Threads["{conversationThread-id}"].Posts["{post-id}"].Extensions["{extension-id}"]
	.Request()
	.UpdateAsync(extension);

```