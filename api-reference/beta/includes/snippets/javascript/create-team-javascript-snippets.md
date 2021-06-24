---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const team = {
  memberSettings: {
    allowCreateUpdateChannels: true
  },
  messagingSettings: {
    allowUserEditMessages: true,
    allowUserDeleteMessages: true
  },
  funSettings: {
    allowGiphy: true,
    giphyContentRating: 'strict'
  },
  discoverySettings: {
    showInTeamsSearchAndSuggestions: true
  }
};

await client.api('/groups/{id}/team')
	.version('beta')
	.put(team);

```