---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const educationClass = {
  description: "Health Level 1",
  classCode: "Health 501",
  displayName: "Health 1",
  externalId: "11019",
  externalName: "Health Level 1",
  externalSource: "sis",
  mailNickname: "fineartschool.net"
};

let res = await client.api('/education/classes')
	.version('beta')
	.post(educationClass);

```