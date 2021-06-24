---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const apply = {
  fields: [
    {
      key: 99,
      sortOn: 'sortOn-value',
      ascending: true,
      color: 'color-value',
      dataOption: 'dataOption-value',
      icon: {
        set: 'set-value',
        index: 99
      }
    }
  ],
  matchCase: true,
  method: 'method-value'
};

await client.api('/me/drive/items/{id}/workbook/tables/{id|name}/sort/apply')
	.version('beta')
	.post(apply);

```