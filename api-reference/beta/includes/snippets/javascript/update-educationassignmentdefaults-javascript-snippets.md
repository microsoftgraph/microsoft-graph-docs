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
  addToCalendarAction: 'studentsAndTeamOwners',
  notificationChannelUrl: 'https://graph.microsoft.com/beta/teams(\'id\')/channels(\'id\')'
};

await client.api('/education/classes/{id}/assignmentDefaults')
	.version('beta')
	.update(educationAssignmentDefaults);

```