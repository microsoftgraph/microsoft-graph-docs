---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const schemaExtension = {
  properties: [
    {
      name:"new-name-value",
      type:"new-type-value"
    },
    {
      name:"additional-name-value",
      type:"additional-type-value"
    }
  ]
};

let res = await client.api('/schemaExtensions/{id}')
	.update(schemaExtension);

```