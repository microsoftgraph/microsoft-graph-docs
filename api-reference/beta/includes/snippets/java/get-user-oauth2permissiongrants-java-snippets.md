---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Content oauth2PermissionGrants = graphClient.users("{id}").oauth2PermissionGrants()
	.buildRequest()
	.get();

```