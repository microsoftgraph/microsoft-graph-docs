---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Agreement agreement = new Agreement();
agreement.displayName = "displayName-value";
agreement.isViewingBeforeAcceptanceRequired = true;

graphClient.agreements("{id}")
	.buildRequest()
	.patch(agreement);

```