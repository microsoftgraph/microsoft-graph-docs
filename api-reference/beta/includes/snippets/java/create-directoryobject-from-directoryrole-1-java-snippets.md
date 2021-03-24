---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DirectoryObject directoryObject = new DirectoryObject();
directoryObject.id = "0f933635-5b77-4cf4-a577-f78a5eb090a2";

graphClient.directoryRoles("0afed502-2456-4fd4-988e-3c21924c28a7").members().references()
	.buildRequest()
	.post(directoryObject);

```