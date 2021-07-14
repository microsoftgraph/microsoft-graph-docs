---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.directoryRoles("f8e85ed8-f66f-4058-b170-3efae8b9c6e5").members("bb165b45-151c-4cf6-9911-cd7188912848").reference()
	.buildRequest()
	.delete();

```