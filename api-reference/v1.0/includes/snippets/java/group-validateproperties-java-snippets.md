---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String displayName = "Myprefix_test_mysuffix";

String mailNickname = "Myprefix_test_mysuffix";

UUID onBehalfOfUserId = UUID.fromString("onBehalfOfUserId-value");

graphClient.groups("{id}")
	.validateProperties(GroupValidatePropertiesParameterSet
		.newBuilder()
		.withDisplayName(displayName)
		.withMailNickname(mailNickname)
		.withOnBehalfOfUserId(onBehalfOfUserId)
		.build())
	.buildRequest()
	.post();

```