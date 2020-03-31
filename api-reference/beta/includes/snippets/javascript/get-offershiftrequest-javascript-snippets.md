---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const offerShiftRequest = {
  senderShiftId: "SHFT_f7e484ed-fdd6-421c-92d9-0bc9e62e2c29",
  senderMessage: "Having a family emergency, could you take this shift for me?",
  recipientUserId: "fe278b61-21ac-4872-8b41-1962bbb98e3c"
};

let res = await client.api('/teams/788b75d2-a911-48c0-a5e2-dc98480457e3/schedule/offershiftrequests')
	.version('beta')
	.post(offerShiftRequest);

```