---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new HeaderOption("ConsistencyLevel", "eventual"));
requestOptions.add(new QueryOption("$filter", "startswith(displayName,'a'),"));
requestOptions.add(new QueryOption("$orderby", "displayName "));

IUserCollectionPage users = graphClient.users()
	.buildRequest( requestOptions )
	.top(1)
	.get();

```