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
    "Branding"
  ],
  client: {
    displayName: "Contoso Ltd.",
    department: "Corporate Marketing",
    webUrl: "https://www.contoso.com"
  },
  displayName: "Contoso Re-branding Project",
  detail: {
    company: {
      displayName: "Adventureworks Inc.",
      department: "Consulting",
      webUrl: "https://adventureworks.com"
    },
    description: "Rebranding of Contoso Ltd.",
    jobTitle: "Lead PM Rebranding",
    role: "project management",
    summary: "A 6 month project to help Contoso rebrand after they were divested from a parent organization."
  }
};

let res = await client.api('/me/profile/projects')
	.version('beta')
	.post(projectParticipation);

```