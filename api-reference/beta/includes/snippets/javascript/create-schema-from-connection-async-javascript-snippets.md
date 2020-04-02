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
      name: "title",
      type: "String",
      isSearchable: "true",
      isRetrievable: "true"
    },
    {
      name: "priority",
      type: "String",
      isQueryable: "true",
      isRetrievable: "true"
    },
    {
      name: "assignee",
      type: "String",
      isRetrievable: "true"
    }
  ]
};

let res = await client.api('/connections/contosohr/schema')
	.version('beta')
	.post(schema);

```