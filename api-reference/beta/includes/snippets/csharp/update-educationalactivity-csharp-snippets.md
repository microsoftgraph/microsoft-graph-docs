---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var educationalActivity = new EducationalActivity
{
	Institution = new InstitutionData
	{
		Location = new PhysicalAddress
		{
			Type = PhysicalAddressType.Business,
			PostOfficeBox = null,
			Street = "12000 E Prospect Rd",
			City = "Fort Collins",
			State = "Colorado",
			CountryOrRegion = "USA",
			PostalCode = "80525"
		}
	}
};

await graphClient.Me.Profile.EducationalActivities["{id}"]
	.Request()
	.UpdateAsync(educationalActivity);

```