---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const itemPatent = {
  description: "Calculating the intent of a user to purchase an item based on the amount of time they hover their mouse over a given pixel.",
  displayName: "Inferring User Intent through browsing behaviors",
  isPending: true,
  number: "USPTO-3954432633",
  webUrl: "https://patents.gov/3954432633"
};

let res = await client.api('/me/profile/patents')
	.version('beta')
	.post(itemPatent);

```