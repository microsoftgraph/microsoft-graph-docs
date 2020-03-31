---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new QueryOption("format", "{format}"));

Stream stream = graphClient.customRequest("/me/drive/items/{item-id}/content", Stream.class)
	.buildRequest( requestOptions )
	.get();

```