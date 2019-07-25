---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const user = {
  accountEnabled: true,
  assignedLicenses: [
    {
      disabledPlans: [ "bea13e0c-3828-4daa-a392-28af7ff61a0f" ],
      skuId: "skuId-value"
    }
  ],
  assignedPlans: [
    {
      assignedDateTime: "2016-10-19T10:37:00Z",
      capabilityStatus: "capabilityStatus-value",
      service: "service-value",
      servicePlanId: "bea13e0c-3828-4daa-a392-28af7ff61a0f"
    }
  ],
  businessPhones: [
    "businessPhones-value"
  ],
  city: "city-value"
};

let res = await client.api('/me')
	.version('beta')
	.update({user : user});

```