---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const namedLocation = {
    @odata.type: "#microsoft.graph.countryNamedLocation",
    displayName: "Updated named location without unknown countries and regions",
    countriesAndRegions: [
        "CA",
        "IN"
    ],
    includeUnknownCountriesAndRegions: false
};

let res = await client.api('/identity/conditionalAccess/namedLocations/1c4427fd-0885-4a3d-8b23-09a899ffa959')
	.update(namedLocation);

```