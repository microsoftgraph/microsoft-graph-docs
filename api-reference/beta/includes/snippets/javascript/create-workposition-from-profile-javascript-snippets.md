---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const workPosition = {
  detail: {
    company: {
      displayName: "Adventureworks Ltd.",
      department: "Consulting",
      officeLocation: "AW23/344",
      address: {
        type: "business",
        street: "123 Patriachy Ponds",
        city: "Moscow",
        countryOrRegion: "Russian Federation",
        postalCode: "RU-34621"
      },
      webUrl: "https://www.adventureworks.com"
    },
    jobTitle: "Senior Product Branding Manager II",
    role: "consulting"
  },
  isCurrent: true
};

let res = await client.api('/me/profile/positions')
	.version('beta')
	.post(workPosition);

```