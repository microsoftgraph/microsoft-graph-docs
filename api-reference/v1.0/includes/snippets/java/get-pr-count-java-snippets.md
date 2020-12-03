---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new HeaderOption("ConsistencyLevel", "eventual"));
requestOptions.add(new QueryOption("$search", "displayName:Pr"));

IUserCollectionPage user = graphClient.groups("{id}").members().microsoft.graph.user()
	.buildRequest( requestOptions )
	.select("displayName,id")
	.orderBy("displayName ")
	.get();

```