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

await graphClient.Groups["{group-id}"].Events["{event-id}"].Extensions
	.Request()
	.AddAsync(extension);

```