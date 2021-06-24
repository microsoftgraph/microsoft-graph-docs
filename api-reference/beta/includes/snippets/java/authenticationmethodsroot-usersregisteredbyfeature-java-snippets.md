---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UserRegistrationFeatureSummary userRegistrationFeatureSummary = graphClient.reports().authenticationMethods()
	.usersRegisteredByFeature(AuthenticationMethodsRootUsersRegisteredByFeatureParameterSet
		.newBuilder()
		.withIncludedUserTypes('all')
		.withIncludedUserRoles('all')
		.build())
	.buildRequest()
	.get();

```