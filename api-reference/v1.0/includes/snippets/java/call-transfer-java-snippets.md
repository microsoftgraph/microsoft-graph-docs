---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

InvitationParticipantInfo transferTarget = new InvitationParticipantInfo();
transferTarget.endpointType = "default";
IdentitySet identity = new IdentitySet();
Identity user = new Identity();
user.id = "550fae72-d251-43ec-868c-373732c2704f";
user.displayName = "Heidi Steen";
identity.user = user;
transferTarget.identity = identity;
transferTarget.replacesCallId = "replacesCallId-value";

String clientContext = "9e90d1c1-f61e-43e7-9f75-d420159aae08";

graphClient.communications().calls("{id}")
	.transfer(transferTarget)
	.buildRequest()
	.post();

```