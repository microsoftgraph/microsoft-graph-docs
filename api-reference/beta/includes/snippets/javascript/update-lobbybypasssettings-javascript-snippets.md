---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const onlineMeeting = {
  lobbyBypassSettings: {
      isDialInBypassEnabled: true
  }
};

await client.api('/me/onlineMeetings/MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZi')
	.version('beta')
	.update(onlineMeeting);

```