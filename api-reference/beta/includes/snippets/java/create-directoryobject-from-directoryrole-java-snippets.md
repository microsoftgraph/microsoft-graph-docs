---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DirectoryObject directoryObject = new DirectoryObject();
directoryObject.id = "2c891f12-928d-4da2-8d83-7d2434a0d8dc";

graphClient.directoryRoles("0afed502-2456-4fd4-988e-3c21924c28a7").members().references()
	.buildRequest()
	.post(directoryObject);

```