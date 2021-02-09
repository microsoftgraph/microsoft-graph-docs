---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const schema = {
  baseType: "microsoft.graph.externalItem",
  properties: [
    {
      name: "ticketTitle",
      type: "String",
      isSearchable: "true",
      isRetrievable: "true",
      labels: [
        "title"
      ]
    },
    {
      name: "priority",
      type: "String",
      isQueryable: "true",
      isRetrievable: "true",
      isSearchable: "false"
    },
    {
      name: "assignee",
      type: "String",
      isRetrievable: "true"
    }
  ]
};

let res = await client.api('/external/connections/contosohr/schema')
	.version('beta')
	.post(schema);

```