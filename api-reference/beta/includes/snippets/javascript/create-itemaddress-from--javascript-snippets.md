---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const itemAddress = {
  displayName: "Home",
  detail: {
    type: "home",
    postOfficeBox: null,
    street: "221B Baker Street",
    city: "London",
    state: null,
    countryOrRegion: "United Kingdom",
    postalCode: "E14 3TD"
  }
};

let res = await client.api('/me/profile/addresses')
	.version('beta')
	.post(itemAddress);

```