---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.servicePrincipals("{servicePrincipalId}").homeRealmDiscoveryPolicies("{policyId}").reference()
	.buildRequest()
	.delete();

```