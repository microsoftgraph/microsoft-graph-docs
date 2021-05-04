---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DirectoryObject directoryObject = new DirectoryObject();
directoryObject.id = "2441b489-4f12-4882-b039-8f6006bd66da";

graphClient.policies().featureRolloutPolicies("{id}").appliesTo().references()
	.buildRequest()
	.post(directoryObject);

```