---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new QueryOption("expand", "fields(select=Name,Color,Quantity)"));

IListItemCollectionPage items = graphClient.sites("{site-id}").lists("{list-id}").items()
	.buildRequest( requestOptions )
	.get();

```