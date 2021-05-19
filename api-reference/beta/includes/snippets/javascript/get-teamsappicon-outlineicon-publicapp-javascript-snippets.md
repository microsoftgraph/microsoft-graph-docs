---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let teamsAppIcon = await client.api('/appCatalogs/teamsApps/95de633a-083e-42f5-b444-a4295d8e9314/appDefinitions/OTVkZTYzM2EtMDgzZS00MmY1LWI0NDQtYTQyOTVkOGU5MzE0IyMxLjAuNSMjUHVibGlzaGVk/outlineIcon/')
	.version('beta')
	.get();

```