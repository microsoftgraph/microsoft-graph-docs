---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const channel = {
    displayName: "UpdateChannelModeration",
    description: "Update channel moderation.",
    moderationSettings: {
        userNewMessageRestriction: "moderators",
        replyRestriction: "everyone",
        allowNewMessageFromBots: true,
        allowNewMessageFromConnectors: true
    }
};

let res = await client.api('/teams/{team-id}/channels/{channel-id}')
	.version('beta')
	.update(channel);

```