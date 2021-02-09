---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const educationalActivity = {
  institution: {
    location: {
      type: "business",
      postOfficeBox: null,
      street: "12000 E Prospect Rd",
      city: "Fort Collins",
      state: "Colorado",
      countryOrRegion: "USA",
      postalCode: "80525"
    }
  }
};

let res = await client.api('/me/profile/educationalActivities/{id}')
	.version('beta')
	.update(educationalActivity);

```