---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String type = "edit";

String scope = "organization";

graphClient.me().drive().items("{item-id}")
	.createLink(DriveItemCreateLinkParameterSet
		.newBuilder()
		.withType(type)
		.withScope(scope)
		.withExpirationDateTime(null)
		.withPassword(null)
		.withMessage(null)
		.build())
	.buildRequest()
	.post();

```