---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const profileCardProperty = {
  directoryPropertyName: "CustomAttribute1",
  annotations: [
    {
      displayName: "Cost Center",
      localizations: [
        {
          languageTag: "ru-RU",
          displayName: "центр затрат"
        }
      ]
    }
  ]
};

let res = await client.api('/organization/{organizationId}/settings/profileCardProperties')
	.version('beta')
	.post(profileCardProperty);

```