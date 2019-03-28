
```CS

GraphServiceClient graphClient = new GraphServiceClient();

//create instance of PhysicalAddress
var address = new PhysicalAddress
{
	City = "Los Angeles",
	CountryOrRegion = "United States",
	PostalCode = "98055",
	State = "CA",
	Street = "12345 Main St.",
};

//create instance of EducationSchool
var schools = new EducationSchool
{
	DisplayName = "Fabrikam High School",
	Description = "Magnate school for the arts. Los Angeles School District",
	Status = "String",
	ExternalSource = "String",
	PrincipalEmail = "AmyR@fabrikam.com",
	PrincipalName = "Amy Roebuck",
	ExternalPrincipalId = "14007",
	HighestGrade = "12",
	LowestGrade = "9",
	SchoolNumber = "10002",
	Address = address,
	ExternalId = "10002",
	Fax = "+1 (253) 555-0101",
	Phone = "+1 (253) 555-0102",
};

await graphClient.Education.Schools
	.Request()
	.AddAsync(schools);

```