---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const schemaExtension = {
    id:"courses",
    description: "Graph Learn training courses extensions",
    targetTypes: [
        "Group"
    ],
    owner: "50897f70-a455-4adf-87bc-4cf17091d5ac",
    properties: [
        {
            name: "courseId",
            type: "Integer"
        },
        {
            name: "courseName",
            type: "String"
        },
        {
            name: "courseType",
            type: "String"
        }
    ]
};

let res = await client.api('/schemaExtensions')
	.version('beta')
	.post(schemaExtension);

```