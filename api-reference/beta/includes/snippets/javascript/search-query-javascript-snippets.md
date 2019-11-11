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
        "microsoft.graph.externalItem"
      ],
      contentSources: [
        "/external/connections/connectionfriendlyname"
      ],
      query: {
        query_string: {
          query: "contoso product"
        }
      },
      from: 0,
      size: 25,
      stored_fields: [
        "title",
        "description"
      ]
    }
  ]
};

let res = await client.api('/search/query')
	.version('beta')
	.post(searchResponse);

```