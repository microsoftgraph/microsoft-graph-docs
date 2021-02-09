---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IReportRootGetCredentialUserRegistrationCountCollectionPage getCredentialUserRegistrationCount = graphClient.reports()
	.getCredentialUserRegistrationCount()
	.buildRequest()
	.get();

```