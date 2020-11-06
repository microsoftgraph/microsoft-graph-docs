---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const languageProficiency = {
  displayName: "Norwegian Bokmål",
  tag: "nb-NO",
  spoken: "nativeOrBilingual",
  written: "nativeOrBilingual",
  reading: "nativeOrBilingual"
};

let res = await client.api('/me/profile/languages')
	.version('beta')
	.post(languageProficiency);

```