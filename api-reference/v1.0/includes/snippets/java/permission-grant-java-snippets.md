---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<DriveRecipient> recipientsList = new LinkedList<DriveRecipient>();
DriveRecipient recipients = new DriveRecipient();
recipients.email = "john@contoso.com";

recipientsList.add(recipients);
DriveRecipient recipients1 = new DriveRecipient();
recipients1.email = "ryan@external.com";

recipientsList.add(recipients1);

LinkedList<String> rolesList = new LinkedList<String>();
rolesList.add("read");

graphClient.shares("{encoded-sharing-url}").permission()
	.grant(rolesList,recipientsList)
	.buildRequest()
	.post();

```