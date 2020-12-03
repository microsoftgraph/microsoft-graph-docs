---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const personInterest = {
  categories: [
    "Sports"
  ],
  description: "World's greatest football club",
  displayName: "Chelsea FC",
  webUrl: "https://www.chelseafc.com"
};

let res = await client.api('/me/profile/interests')
	.version('beta')
	.post(personInterest);

```