---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CloudPcProvisioningPolicyCollectionPage provisioningPolicies = graphClient.deviceManagement().virtualEndpoint().provisioningPolicies()
	.buildRequest()
	.get();

```