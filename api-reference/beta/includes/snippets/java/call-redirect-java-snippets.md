---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<InvitationParticipantInfo> targetsList = new LinkedList<InvitationParticipantInfo>();
InvitationParticipantInfo targets = new InvitationParticipantInfo();
IdentitySet identity = new IdentitySet();
Identity application = new Identity();
application.displayName = "test bot 2";
application.id = "22bfd41f-550e-477d-8789-f6f7bd2a5e8b";
identity.application = application;
targets.identity = identity;

targetsList.add(targets);

String callbackUri = "https://bot.contoso.com/api/calls/24701998-1a73-4d42-8085-bf46ed0ae039";

graphClient.communications().calls("491f0b00-ffff-4bc9-a43e-b226498ec22a")
	.redirect(targetsList,null,null,null,null,callbackUri)
	.buildRequest()
	.post();

```