---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const projectParticipation = {
  categories: [
    "categories-value"
  ],
  client: {
    displayName: "displayName-value",
    pronunciation: "pronunciation-value",
    department: "department-value",
    officeLocation: "officeLocation-value",
    address: {
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
  displayName: "displayName-value",
  detail: {
    company: {
      displayName: "displayName-value",
      pronunciation: "pronunciation-value",
      department: "department-value",
      officeLocation: "officeLocation-value",
      address: {
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
    description: "description-value",
    endMonthYear: "datetime-value",
    jobTitle: "jobTitle-value",
    role: "role-value",
    startMonthYear: "datetime-value",
    summary: "summary-value"
  },
  colleagues: [
    {
      displayName: "displayName-value",
      relationship: "relationship-value",
      userPrincipalName: "userPrincipalName-value"
    }
  ],
  sponsors: [
    {
      displayName: "displayName-value",
      relationship: "relationship-value",
      userPrincipalName: "userPrincipalName-value"
    }
  ]
};

let res = await client.api('/me/profile/projects')
	.version('beta')
	.post(projectParticipation);

```