---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AppConsentRequestFilterByCurrentUserCollectionPage filterByCurrentUser = graphClient.identityGovernance().appConsent().appConsentRequests()
	.filterByCurrentUser(AppConsentRequestFilterByCurrentUserParameterSet
		.newBuilder()
		.withOn('reviewer')
		.build())
	.buildRequest()
	.filter("userConsentRequests/any(u:u/status eq 'InProgress')")
	.get();

```