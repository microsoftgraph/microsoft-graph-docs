---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UserConsentRequestFilterByCurrentUserCollectionPage filterByCurrentUser = graphClient.identityGovernance().appConsent().appConsentRequests("ee245379-e3bb-4944-a997-24115f0b8b5e").userConsentRequests()
	.filterByCurrentUser(UserConsentRequestFilterByCurrentUserParameterSet
		.newBuilder()
		.withOn('reviewer')
		.build())
	.buildRequest()
	.filter(" (status eq 'Completed')")
	.get();

```