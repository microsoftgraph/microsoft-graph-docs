---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DirectoryObject directoryObject = new DirectoryObject();
directoryObject.id = "{user-id}";

graphClient.directoryRoles("roleTemplateId={role-templateId}").members().references()
	.buildRequest()
	.post(directoryObject);

```