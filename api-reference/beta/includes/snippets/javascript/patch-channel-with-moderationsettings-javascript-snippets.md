---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const channel = {
    displayName: 'UpdateChannelModeration',
    description: 'Update channel moderation.',
    moderationSettings: {
        userNewMessageRestriction: 'moderators',
        replyRestriction: 'everyone',
        allowNewMessageFromBots: true,
        allowNewMessageFromConnectors: true
    }
};

await client.api('/teams/893075dd-2487-4122-925f-022c42e20265/channels/19:561fbdbbfca848a484f0a6f00ce9dbbd@thread.tacv2')
	.version('beta')
	.update(channel);

```