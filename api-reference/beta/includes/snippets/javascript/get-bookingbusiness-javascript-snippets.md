---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let bookingBusiness = await client.api('/bookingBusinesses/Fabrikam@M365B489948.onmicrosoft.com')
	.version('beta')
	.get();

```