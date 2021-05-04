---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

VirtualEndpointGetEffectivePermissionsCollectionPage getEffectivePermissions = graphClient.deviceManagement().virtualEndpoint()
	.getEffectivePermissions()
	.buildRequest()
	.get();

```