---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AppConsentRequest appConsentRequest = graphClient.identityGovernance().appConsent().appConsentRequests("af330b30-dd59-4482-a848-0fd81b0438ed")
	.buildRequest()
	.get();

```