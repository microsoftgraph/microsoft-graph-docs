---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const personName = {
  displayName: "displayName-value",
  first: "first-value",
  initials: "initials-value",
  last: "last-value",
  languageTag: "languageTag-value",
  maiden: "maiden-value"
};

let res = await client.api('/me/profile/names/{id}')
	.version('beta')
	.update(personName);

```