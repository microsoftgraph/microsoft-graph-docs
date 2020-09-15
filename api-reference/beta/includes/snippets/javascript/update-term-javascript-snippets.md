---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const term = {
  "labels" : [
      {
          "name" : "changedLabel",
          "languageTag" : "en-US",
          "isDefault" : true
      }
  ]
};

let res = await client.api('/termStore/sets/{setId}/terms/{termId}')
	.version('beta')
	.update(term);

```