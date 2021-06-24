---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const synchronizationSchema = {
    directories: [
        {
            name: 'Azure Active Directory',
            objects: [
                {
                    name: 'User',
                    attributes: [
                        {
                            name: 'userPrincipalName',
                            type: 'string'
                        }
                    ]
                },
            ]
        },
        {
            name: 'Salesforce',
        }
    ],
    synchronizationRules: [
        {
            name: 'USER_TO_USER',
            sourceDirectoryName: 'Azure Active Directory',
            targetDirectoryName: 'Salesforce',
            objectMappings: [
                {
                    sourceObjectName: 'User',
                    targetObjectName: 'User',
                    attributeMappings: [
                        {
                            source: {},
                            targetAttributeName: 'userName'
                        },
                    ]
                },
            ]
        },
    ]
};

await client.api('/servicePrincipals/{id}/synchronization/jobs/{jobId}/schema')
	.version('beta')
	.put(synchronizationSchema);

```