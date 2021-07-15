---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String currentPassword = "xWwvJ]6NMw+bWH-d";

String newPassword = "0eM85N54wFxWwvJ]";

graphClient.me()
	.changePassword(UserChangePasswordParameterSet
		.newBuilder()
		.withCurrentPassword(currentPassword)
		.withNewPassword(newPassword)
		.build())
	.buildRequest()
	.post();

```