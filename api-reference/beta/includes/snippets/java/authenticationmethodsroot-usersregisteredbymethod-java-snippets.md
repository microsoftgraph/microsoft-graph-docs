---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UserRegistrationMethodSummary userRegistrationMethodSummary = graphClient.reports().authenticationMethods()
	.usersRegisteredByMethod('all','all')
	.buildRequest()
	.get();

```