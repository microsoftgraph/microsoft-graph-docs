---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UserCredentialUsageDetailsCollectionPage userCredentialUsageDetails = graphClient.reports().userCredentialUsageDetails()
	.buildRequest()
	.get();

```