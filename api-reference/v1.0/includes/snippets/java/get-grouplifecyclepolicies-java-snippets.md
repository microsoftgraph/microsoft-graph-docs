---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

GroupLifecyclePolicyCollectionPage groupLifecyclePolicies = graphClient.groups("{id}").groupLifecyclePolicies()
	.buildRequest()
	.get();

```