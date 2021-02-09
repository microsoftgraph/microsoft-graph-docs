---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const personAward = {
  description: "Lifetime Achievement award from the International Association of Branding Managers",
  displayName: "Lifetime Achievement Award For Excellence in Branding",
  issuedDate: "Date",
  issuingAuthority: "International Association of Branding Management",
  thumbnailUrl: "https://iabm.io/sdhdfhsdhshsd.jpg",
  webUrl: "https://www.iabm.io"
};

let res = await client.api('/me/profile/awards')
	.version('beta')
	.post(personAward);

```