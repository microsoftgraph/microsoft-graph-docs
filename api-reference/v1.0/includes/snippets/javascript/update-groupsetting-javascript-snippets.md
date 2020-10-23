---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const groupSetting = {
  displayName: "GroupSettings",
  templateId: "08d542b9-071f-4e16-94b0-74abb372e3d9",
  values: [
    {
            name: "AllowToAddGuests",
            value: "false"
    }
  ]
};

let res = await client.api('/groups/{id}/settings/{id}')
	.update(groupSetting);

```