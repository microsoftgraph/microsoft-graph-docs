---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const searchResponse = {
  requests: [
    {
      entityTypes: [
        'externalItem'
      ],
      contentSources: [
        '/external/connections/connectionfriendlyname'
      ],
      query: {
        queryString: 'contoso product'
      },
      from: 0,
      size: 25,
      fields: [
        'title',
        'description'
      ]
    }
  ]
};

await client.api('/search/query')
	.version('beta')
	.post(searchResponse);

```