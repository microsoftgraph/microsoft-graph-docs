---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const list = {
  displayName: 'Books',
  columns: [
    {
      name: 'Author',
      text: { }
    },
    {
      name: 'PageCount',
      number: { }
    }
  ],
  list: {
    template: 'genericList'
  }
};

await client.api('/sites/{site-id}/lists')
	.version('beta')
	.post(list);

```