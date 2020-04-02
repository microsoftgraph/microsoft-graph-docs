---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const driveItem = {
  name: "Just some files",
  "@name.conflictBehavior" : "rename",
  bundle: { },
  children: [
    { id: "1234asdf" },
    { id: "1234qwerty" }
  ]
};

let res = await client.api('/drive/bundles')
	.version('beta')
	.post(driveItem);

```