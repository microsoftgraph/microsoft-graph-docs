---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const educationalActivity = {
  completionMonthYear: "datetime-value",
  endMonthYear: "datetime-value",
  institution: {
    description: "description-value",
    displayName: "displayName-value",
    location: {
      type: "type-value",
      postOfficeBox: "postOfficeBox-value",
      street: "street-value",
      city: "city-value",
      state: "state-value",
      countryOrRegion: "countryOrRegion-value",
      postalCode: "postalCode-value"
    },
    webUrl: "webUrl-value"
  },
  program: {
    abbreviation: "abbreviation-value",
    activities: "activities-value",
    awards: "awards-value",
    description: "description-value",
    displayName: "displayName-value",
    fieldsOfStudy: "fieldsOfStudy-value",
    grade: "grade-value",
    notes: "notes-value",
    webUrl: "webUrl-value"
  },
  startMonthYear: "datetime-value"
};

let res = await client.api('/me/profile/educationalActivities')
	.version('beta')
	.post(educationalActivity);

```