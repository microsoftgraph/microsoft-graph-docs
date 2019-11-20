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
    displayName: "Named location with unknown countries and regions",
    countriesAndRegions: [
        "US",
        "GB"
    ],
    includeUnknownCountriesAndRegions: true
};

let res = await client.api('/conditionalAccess/namedLocations')
	.version('beta')
	.post(namedLocation);

```