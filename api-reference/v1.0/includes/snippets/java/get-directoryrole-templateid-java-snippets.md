---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DirectoryRole directoryRole = graphClient.directoryRoles("roleTemplateId=4a5d8f65-41da-4de4-8968-e035b65339cf")
	.buildRequest()
	.get();

```