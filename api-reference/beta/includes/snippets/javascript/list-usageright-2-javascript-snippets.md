---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let usageRights = await client.api('/devices/{objectId}/usageRights')
	.version('beta')
	.filter('state in (\'active\', \'suspended\') and serviceIdentifier in (\'ABCD\')')
	.get();

```