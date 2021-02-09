---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const personCertification = {
  certificationId: "KB-1235466333663322",
  description: "Blackbelt in Marketing - Brand Management",
  displayName: "Marketing Blackbelt - Brand Management",
  thumbnailUrl: "https://iame.io/dfhdfdfd334.jpg",
  webUrl: "https://www.iame.io/blackbelt"
};

let res = await client.api('/me/profile/certifications')
	.version('beta')
	.post(personCertification);

```