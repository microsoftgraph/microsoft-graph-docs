---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AppConsentRequestCollectionPage appConsentRequests = graphClient.identityGovernance().appConsent().appConsentRequests()
	.buildRequest()
	.filter("userConsentRequests/any (u:u/status eq 'InProgress')")
	.get();

```