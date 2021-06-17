---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DirectoryObject directoryObject = new DirectoryObject();
directoryObject.id = "15c1a2d5-9101-44b2-83ab-885db8a647ca";

graphClient.directoryRoles("fe8f10bf-c9c2-47eb-95cb-c26cc85f1830").members().references()
	.buildRequest()
	.post(directoryObject);

```