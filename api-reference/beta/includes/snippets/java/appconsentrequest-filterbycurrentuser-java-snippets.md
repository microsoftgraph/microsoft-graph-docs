---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AppConsentRequest appConsentRequest = graphClient.identityGovernance().appConsent().appConsentRequests("filterByCurrentUser(on='reviewer')")
	.buildRequest()
	.filter("userConsentRequests/any(u:u/status eq 'InProgress')")
	.get();

```