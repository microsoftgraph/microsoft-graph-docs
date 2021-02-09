---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/identity/conditionalAccess/namedLocations')
	.filter('microsoft.graph.countryNamedLocation/countriesAndRegions/any(c: c eq 'CA')')
	.get();

```