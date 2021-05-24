---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const educationSchool = {
  '@odata.type': '#microsoft.graph.educationSchool',
  displayName: 'String',
  description: 'String',
  externalSource: 'String',
  externalSourceDetail: 'String',
  principalEmail: 'String',
  principalName: 'String',
  externalPrincipalId: 'String',
  lowestGrade: 'String',
  highestGrade: 'String',
  schoolNumber: 'String',
  externalId: 'String',
  phone: 'String',
  fax: 'String',
  createdBy: {
    '@odata.type': 'microsoft.graph.identitySet'
  },
  address: {
    '@odata.type': 'microsoft.graph.physicalAddress'
  }
};

await client.api('/education/schools')
	.post(educationSchool);

```