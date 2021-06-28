---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DirectoryObject directoryObject = new DirectoryObject();
directoryObject.id = "bb165b45-151c-4cf6-9911-cd7188912848";

graphClient.directoryRoles("roleTemplateId=88d8e3e3-8f55-4a1e-953a-9b9898b8876b").members().references()
	.buildRequest()
	.post(directoryObject);

```