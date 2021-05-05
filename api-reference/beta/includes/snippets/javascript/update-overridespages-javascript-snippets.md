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
            Value: 'Are you sure that you want to cancel your selection?'
        }
    ]
};

await client.api('/identity/b2cUserFlows/B2C_1_Customer/languages/en/overridesPages/phonefactor/$value')
	.version('beta')
	.put(stream);

```