---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new QueryOption("$filter", "isOf('Microsoft.Graph.User')+or+isOf('Microsoft.Graph.Group')"));

DirectoryObject directoryObject = graphClient.directoryObjects("delta")
	.buildRequest( requestOptions )
	.get();

```