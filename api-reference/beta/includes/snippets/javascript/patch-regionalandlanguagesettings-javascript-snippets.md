---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const regionalAndLanguageSettings = {
  authoringLanguages: [
    {
     locale: 'en-US' },
    {
     locale: 'es-MX' }
  ],
  defaultRegionalFormat: {
     locale: 'en-US'
   }
};

await client.api('/me/settings/regionalandlanguagesettings')
	.version('beta')
	.update(regionalAndLanguageSettings);

```