---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.directoryRoles("roleTemplateId=9f06204d-73c1-4d4c-880a-6edb90606fd8").members("bb165b45-151c-4cf6-9911-cd7188912848").reference()
	.buildRequest()
	.delete();

```