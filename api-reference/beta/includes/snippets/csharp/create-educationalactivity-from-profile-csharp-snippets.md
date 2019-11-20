---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var educationalActivity = new EducationalActivity
{
	CompletionMonthYear = new Date(1900,1,1),
	EndMonthYear = new Date(1900,1,1),
	Institution = new InstitutionData
	{
		Description = "description-value",
		DisplayName = "displayName-value",
		Location = new PhysicalAddress
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
	Program = new EducationalActivityDetail
	{
		Abbreviation = "abbreviation-value",
		Activities = "activities-value",
		Awards = "awards-value",
		Description = "description-value",
		DisplayName = "displayName-value",
		FieldsOfStudy = "fieldsOfStudy-value",
		Grade = "grade-value",
		Notes = "notes-value",
		WebUrl = "webUrl-value"
	},
	StartMonthYear = new Date(1900,1,1)
};

await graphClient.Me.Profile.EducationalActivities
	.Request()
	.AddAsync(educationalActivity);

```