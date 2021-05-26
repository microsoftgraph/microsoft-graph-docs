---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const stream = {
LocalizedStrings: [
      {
          ElementType: 'UxElement',
          ElementId: null,
          StringId: 'alert_message',
          Override: true,
          Value: 'Are you sure that you want to cancel entering your information?'
      }
  ]
};

await client.api('/identity/b2xUserFlows/B2X_1_Partner/languages/en/overridesPages/selfasserted1_1/$value')
	.put(stream);

```