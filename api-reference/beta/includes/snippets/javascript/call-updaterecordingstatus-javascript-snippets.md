---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const updateRecordingStatusOperation = {
  clientContext: "clientContext-value",
  status: "notRecording | recording | failed"
};

let res = await client.api('/communications/calls/{id}/updateRecordingStatus')
	.version('beta')
	.post(updateRecordingStatusOperation);

```