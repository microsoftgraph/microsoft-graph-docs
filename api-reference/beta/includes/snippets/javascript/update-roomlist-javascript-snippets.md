---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const place = {
  @odata.type: "microsoft.graph.roomList",
  displayName: "Building 1",
  phone:"555-555-0100",
  address: {
    street: "4567 Main Street",
    city: "Buffalo",
    state: "NY",
    postalCode: "98052",
    countryOrRegion: "USA"
  },
  geoCoordinates: {
    altitude: null,
    latitude: 47.0,
    longitude: -122.0,
    accuracy: null,
    altitudeAccuracy: null
 }
};

let res = await client.api('/places/Building1RroomList@contoso.onmicrosoft.com')
	.version('beta')
	.update(place);

```