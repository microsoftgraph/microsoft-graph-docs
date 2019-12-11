---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const openShifts = {
  sharedOpenShift: {
    openSlotCount: 99
  },
  draftOpenShift: {
    openSlotCount: 99
  },
  schedulingGroupId: "TAG_f914d037-00a3-4ba4-b712-ef178cbea263"
};

let res = await client.api('/teams/{id}/schedule/openShifts')
	.version('beta')
	.update(openShifts);

```