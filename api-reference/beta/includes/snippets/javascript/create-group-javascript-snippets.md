---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const group = {
  description: "Self help community for golf",
  displayName: "Golf Assist",
  groupTypes: [
    "Unified"
  ],
  mailEnabled: true,
  mailNickname: "golfassist",
  securityEnabled: false
};

let res = await client.api('/groups')
	.version('beta')
	.post(group);

```