---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ConditionalAccessPolicyCollectionPage policies = graphClient.identity().conditionalAccess().policies()
	.buildRequest()
	.filter("displayName eq 'SimplePolicy1' or displayName eq 'SimplePolicy2'")
	.get();

```