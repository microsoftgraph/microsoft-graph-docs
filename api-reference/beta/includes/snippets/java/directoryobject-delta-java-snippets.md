---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DirectoryObject directoryObject = graphClient.directoryObjects("delta")
	.buildRequest()
	.filter("isOf('Microsoft.Graph.User')+or+isOf('Microsoft.Graph.Group')")
	.get();

```