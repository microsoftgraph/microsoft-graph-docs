---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const bookingCustomer = {
    displayName: "Joni Sherman",
    emailAddress: "jonis@relecloud.com"
};

let res = await client.api('/bookingBusinesses/Contosolunchdelivery@M365B489948.onmicrosoft.com/customers')
	.version('beta')
	.post(bookingCustomer);

```