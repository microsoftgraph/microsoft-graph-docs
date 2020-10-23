---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var extension = new OpenTypeExtension
{
	ExtensionName = "Com.Contoso.Deal",
	AdditionalData = new Dictionary<string, object>()
	{
		{"companyName", "Alpine Skis"},
		{"dealValue", "1010100"},
		{"expirationDate", "2015-07-03T13:04:00Z"}
	}
};

await graphClient.Groups["f5480dfd-7d77-4d0b-ba2e-3391953cc74a"].Events["AAMkADVl17IsAAA="].Extensions
	.Request()
	.AddAsync(extension);

```