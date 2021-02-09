---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IVirtualEndpointGetEffectivePermissionsCollectionPage getEffectivePermissions = graphClient.deviceManagement().virtualEndpoint()
	.getEffectivePermissions()
	.buildRequest()
	.get();

```