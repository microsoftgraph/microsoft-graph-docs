---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var orgContact = new OrgContact
{
	BusinessPhones = new List<String>()
	{
		"businessPhones-value"
	},
	City = "city-value",
	CompanyName = "companyName-value",
	Country = "country-value",
	Department = "department-value",
	DisplayName = "displayName-value"
};

await graphClient.Contacts["{id}"]
	.Request()
	.UpdateAsync(orgContact);

```