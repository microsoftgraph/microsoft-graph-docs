---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let administrativeUnit = await client.api('/education/classes/{educationClassId}/members/{educationUserId}/schools/{educationSchoolId}/administrativeUnit')
	.get();

```