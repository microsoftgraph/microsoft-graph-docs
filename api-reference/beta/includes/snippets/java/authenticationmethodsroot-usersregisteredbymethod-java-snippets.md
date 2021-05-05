---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UserRegistrationMethodSummary userRegistrationMethodSummary = graphClient.reports().authenticationMethods()
	.usersRegisteredByMethod(AuthenticationMethodsRootUsersRegisteredByMethodParameterSet
		.newBuilder()
		.withIncludedUserTypes('all')
		.withIncludedUserRoles('all')
		.build())
	.buildRequest()
	.get();

```