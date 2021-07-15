---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

MobilityManagementPolicyCollectionPage mobileAppManagementPolicies = graphClient.policies().mobileAppManagementPolicies()
	.buildRequest()
	.get();

```