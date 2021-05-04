---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const schemaExtension = {
    id: 'graphlearn_courses',
    description: 'Graph Learn training courses extensions',
    targetTypes: [
        'Group'
    ],
    properties: [
        {
            name: 'courseId',
            type: 'Integer'
        },
        {
            name: 'courseName',
            type: 'String'
        },
        {
            name: 'courseType',
            type: 'String'
        }
    ]
};

await client.api('/schemaExtensions')
	.post(schemaExtension);

```