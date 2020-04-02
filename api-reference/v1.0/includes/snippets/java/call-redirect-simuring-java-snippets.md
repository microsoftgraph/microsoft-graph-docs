---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<InvitationParticipantInfo> targetsList = new LinkedList<InvitationParticipantInfo>();
InvitationParticipantInfo targets = new InvitationParticipantInfo();
IdentitySet identity = new IdentitySet();
Identity user = new Identity();
user.displayName = "test user";
user.id = "98da8a1a-1b87-452c-a713-65d3f10b1253";
identity.user = user;
targets.identity = identity;

targetsList.add(targets);
InvitationParticipantInfo targets1 = new InvitationParticipantInfo();
IdentitySet identity1 = new IdentitySet();
Identity user1 = new Identity();
user1.displayName = "test user 2";
user1.id = "bf5aae9a-d11d-47a8-93b1-782504c9c3f3";
identity1.user = user1;
targets1.identity = identity1;

targetsList.add(targets1);

LinkedList<String> routingPoliciesList = new LinkedList<String>();
routingPoliciesList.add("disableForwarding");

String callbackUri = "https://bot.contoso.com/api/calls/24701998-1a73-4d42-8085-bf46ed0ae039";

graphClient.communications().calls("481f0b00-ffff-4ca1-8c67-a5f1e31e8e82")
	.redirect(targetsList,null,callbackUri)
	.buildRequest()
	.post();

```