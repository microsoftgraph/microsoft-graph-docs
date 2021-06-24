---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String type = "view";

String scope = "anonymous";

String password = "String";

LinkedList<DriveRecipient> recipientsList = new LinkedList<DriveRecipient>();
DriveRecipient recipients = new DriveRecipient();

recipientsList.add(recipients);

graphClient.me().drive().items("{itemId}")
	.createLink(DriveItemCreateLinkParameterSet
		.newBuilder()
		.withType(type)
		.withScope(scope)
		.withExpirationDateTime(null)
		.withPassword(password)
		.withMessage(null)
		.withRecipients(recipientsList)
		.build())
	.buildRequest()
	.post();

```