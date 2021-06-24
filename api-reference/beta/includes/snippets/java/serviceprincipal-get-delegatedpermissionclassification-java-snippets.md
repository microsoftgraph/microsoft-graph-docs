---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DelegatedPermissionClassificationCollectionPage delegatedPermissionClassifications = graphClient.servicePrincipals("{id}").delegatedPermissionClassifications()
	.buildRequest()
	.get();

```