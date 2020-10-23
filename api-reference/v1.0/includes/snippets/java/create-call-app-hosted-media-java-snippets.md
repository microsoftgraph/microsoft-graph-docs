---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Call call = new Call();
call.callbackUri = "https://bot.contoso.com/callback";
ParticipantInfo source = new ParticipantInfo();
IdentitySet identity = new IdentitySet();
Identity application = new Identity();
application.displayName = "Calling Bot";
application.id = "2891555a-92ff-42e6-80fa-6e1300c6b5c6";
identity.application = application;
source.identity = identity;
source.region = null;
source.languageId = null;
call.source = source;
LinkedList<InvitationParticipantInfo> targetsList = new LinkedList<InvitationParticipantInfo>();
InvitationParticipantInfo targets = new InvitationParticipantInfo();
IdentitySet identity1 = new IdentitySet();
Identity user = new Identity();
user.displayName = "John";
user.id = "112f7296-5fa4-42ca-bae8-6a692b15d4b8";
identity1.user = user;
targets.identity = identity1;
targetsList.add(targets);
call.targets = targetsList;
LinkedList<String> requestedModalitiesList = new LinkedList<String>();
requestedModalitiesList.add("audio");
call.requestedModalities = requestedModalitiesList;
AppHostedMediaConfig mediaConfig = new AppHostedMediaConfig();
mediaConfig.blob = "<Media Session Configuration>";
call.mediaConfig = mediaConfig;

graphClient.communications().calls()
	.buildRequest()
	.post(call);

```