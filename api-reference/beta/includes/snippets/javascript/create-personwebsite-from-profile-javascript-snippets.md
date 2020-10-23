---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const personWebsite = {
  categories: [
    "football"
  ],
  displayName: "Lyn Damer",
  webUrl: "www.lyndamer.no"
};

let res = await client.api('/me/profile/websites')
	.version('beta')
	.post(personWebsite);

```