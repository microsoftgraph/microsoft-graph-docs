---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var orgContact = new OrgContact
{
	CompanyName = "companyName-value",
	Department = "department-value",
	DisplayName = "displayName-value",
	AdditionalData = new Dictionary<string, object>()
	{
		{"businessPhones", "[\"businessPhones-value\"]"},
		{"city", "city-value"},
		{"country", "country-value"}
	}
};

await graphClient.Contacts["{id}"]
	.Request()
	.UpdateAsync(orgContact);

```