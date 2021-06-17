---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String type = "embed";

graphClient.sites("{siteId}").lists("{listId}").items("{itemId}")
	.createLink(ListItemCreateLinkParameterSet
		.newBuilder()
		.withType(type)
		.withScope(null)
		.withExpirationDateTime(null)
		.withPassword(null)
		.withRecipients(null)
		.build())
	.buildRequest()
	.post();

```