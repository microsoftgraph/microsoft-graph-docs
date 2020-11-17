---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IConditionalAccessPolicyCollectionPage policies = graphClient.identity().conditionalAccess().policies()
	.buildRequest()
	.filter("displayName eq 'SimplePolicy1' or displayName eq 'SimplePolicy2'")
	.get();

```