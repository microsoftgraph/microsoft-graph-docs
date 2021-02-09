---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Invitation invitation = new Invitation();
invitation.invitedUserEmailAddress = "yyy@test.com";
invitation.inviteRedirectUrl = "https://myapp.contoso.com";

graphClient.invitations()
	.buildRequest()
	.post(invitation);

```