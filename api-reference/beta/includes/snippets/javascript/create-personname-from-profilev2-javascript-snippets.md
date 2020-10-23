---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const personName = {
  displayName: "Innocenty Popov",
  first: "Innocenty",
  initials: "IP",
  last: "Popov",
  languageTag: "en-US",
  maiden: null
};

let res = await client.api('/me/profile/names')
	.version('beta')
	.post(personName);

```