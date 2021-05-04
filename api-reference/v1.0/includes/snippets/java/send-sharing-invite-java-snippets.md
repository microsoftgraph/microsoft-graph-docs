---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<DriveRecipient> recipientsList = new LinkedList<DriveRecipient>();
DriveRecipient recipients = new DriveRecipient();
recipients.email = "ryan@contoso.com";

recipientsList.add(recipients);

String message = "Here's the file that we're collaborating on.";

Boolean requireSignIn = true;

Boolean sendInvitation = true;

LinkedList<String> rolesList = new LinkedList<String>();
rolesList.add("write");

String password = "password123";

String expirationDateTime = "07/15/2018 14:00:00";

graphClient.me().drive().items("{item-id}")
	.invite(DriveItemInviteParameterSet
		.newBuilder()
		.withRequireSignIn(requireSignIn)
		.withRoles(rolesList)
		.withSendInvitation(sendInvitation)
		.withMessage(message)
		.withRecipients(recipientsList)
		.withExpirationDateTime(expirationDateTime)
		.withPassword(password)
		.build())
	.buildRequest()
	.post();

```