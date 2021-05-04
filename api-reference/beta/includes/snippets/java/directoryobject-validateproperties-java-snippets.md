---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String entityType = "Group";

String displayName = "Myprefix_test_mysuffix";

String mailNickname = "Myprefix_test_mysuffix";

UUID onBehalfOfUserId = UUID.fromString("onBehalfOfUserId-value");

graphClient.directoryObjects()
	.validateProperties(DirectoryObjectValidatePropertiesParameterSet
		.newBuilder()
		.withEntityType(entityType)
		.withDisplayName(displayName)
		.withMailNickname(mailNickname)
		.withOnBehalfOfUserId(onBehalfOfUserId)
		.build())
	.buildRequest()
	.post();

```