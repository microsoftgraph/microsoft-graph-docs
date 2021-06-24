---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Agreement agreement = new Agreement();
agreement.displayName = "Sample ToU display name";
agreement.isViewingBeforeAcceptanceRequired = true;

graphClient.identityGovernance().termsOfUse().agreements("093b947f-8363-4979-a47d-4c52b33ee1be")
	.buildRequest()
	.patch(agreement);

```