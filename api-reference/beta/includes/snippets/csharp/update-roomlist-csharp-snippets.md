---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var place = new RoomList
{
	DisplayName = "Building 1",
	Phone = "555-555-0100",
	Address = new PhysicalAddress
	{
		Street = "4567 Main Street",
		City = "Buffalo",
		State = "NY",
		PostalCode = "98052",
		CountryOrRegion = "USA"
	},
	GeoCoordinates = new OutlookGeoCoordinates
	{
		Altitude = null,
		Latitude = 47,
		Longitude = -122,
		Accuracy = null,
		AltitudeAccuracy = null
	}
};

await graphClient.Places["Building1RroomList@contoso.onmicrosoft.com"]
	.Request()
	.UpdateAsync(place);

```