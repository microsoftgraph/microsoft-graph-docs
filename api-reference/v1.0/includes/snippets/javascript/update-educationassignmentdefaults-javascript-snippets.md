---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const educationAssignmentDefaults = {
  addedStudentAction: 'assignIfOpen',
  notificationChannelUrl: 'https://graph.microsoft.com/beta/teams(\'acdefc6b-2dc6-4e71-b1e9-6d9810ab1793\')/channels(\'3da03fc4-8eac-4459-84fb-1422dc01f65e\')'
};

await client.api('/education/classes/acdefc6b-2dc6-4e71-b1e9-6d9810ab1793/assignmentDefaults')
	.update(educationAssignmentDefaults);

```