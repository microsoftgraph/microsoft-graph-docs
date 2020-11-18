---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const stringKeyStringValuePair = Content-Type: application/json
Content-length: 122

{
    parameters: [{
      subjects: [{
          objectId: "9bb0f679-a883-4a6f-8260-35b491b8b8c8",
          objectTypeName: "User"
      }],
      ruleId: "ea807875-5618-4f0a-9125-0b46a05298ca"
    }]
  };

let res = await client.api('/servicePrincipals/{servicePrincipalsId}/synchronization/jobs/{synchronizationJobId}/provisionOnDemand')
	.version('beta')
	.post(stringKeyStringValuePair);

```