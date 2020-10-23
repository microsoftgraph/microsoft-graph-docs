---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

HomeRealmDiscoveryPolicy homeRealmDiscoveryPolicy = new HomeRealmDiscoveryPolicy();
LinkedList<String> definitionList = new LinkedList<String>();
definitionList.add("definition-value");
homeRealmDiscoveryPolicy.definition = definitionList;
homeRealmDiscoveryPolicy.displayName = "displayName-value";
homeRealmDiscoveryPolicy.isOrganizationDefault = true;
homeRealmDiscoveryPolicy.type = "type-value";

graphClient.policies().homeRealmDiscoveryPolicies("{id}")
	.buildRequest()
	.patch(homeRealmDiscoveryPolicy);

```