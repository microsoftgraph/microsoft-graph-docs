---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const channel = {
    displayName: 'TestChannelModeration',
    description: 'Test channel moderation.',
    membershipType: 'standard',
    moderationSettings: {
        userNewMessageRestriction: 'everyoneExceptGuests',
        replyRestriction: 'everyone',
        allowNewMessageFromBots: true,
        allowNewMessageFromConnectors: true
    }
};

await client.api('/teams/57fb72d0-d811-46f4-8947-305e6072eaa5/channels')
	.version('beta')
	.post(channel);

```