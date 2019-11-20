---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var workPosition = new WorkPosition
{
	Categories = new List<String>()
	{
		"categories-value"
	},
	Detail = new PositionDetail
	{
		Company = new CompanyDetail
		{
			DisplayName = "displayName-value",
			Pronunciation = "pronunciation-value",
			Department = "department-value",
			OfficeLocation = "officeLocation-value",
			Address = new PhysicalAddress
			{
				Type = PhysicalAddressType.Unknown,
				PostOfficeBox = "postOfficeBox-value",
				Street = "street-value",
				City = "city-value",
				State = "state-value",
				CountryOrRegion = "countryOrRegion-value",
				PostalCode = "postalCode-value"
			},
			WebUrl = "webUrl-value"
		},
		Description = "description-value",
		EndMonthYear = new Date(1900,1,1),
		JobTitle = "jobTitle-value",
		Role = "role-value",
		StartMonthYear = new Date(1900,1,1),
		Summary = "summary-value"
	}
};

await graphClient.Me.Profile.Positions["{id}"]
	.Request()
	.UpdateAsync(workPosition);

```