---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new QueryOption("format", "{format}"));

InputStream stream = graphClient.customRequest("/drive/items/{item-id}/content", InputStream.class)
	.buildRequest( requestOptions )
	.get();

```