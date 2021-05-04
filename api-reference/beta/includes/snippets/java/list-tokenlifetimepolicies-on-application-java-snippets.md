---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TokenLifetimePolicyCollectionWithReferencesPage tokenLifetimePolicies = graphClient.applications("{id}").tokenLifetimePolicies()
	.buildRequest()
	.get();

```