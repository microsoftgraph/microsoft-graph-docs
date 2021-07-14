---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new HeaderOption("ConsistencyLevel", "eventual"));

UserCollectionPage user = graphClient.groups("{id}").transitiveMembers().microsoft.graph.user()
	.buildRequest( requestOptions )
	.filter("startswith(displayName, 'a')")
	.orderBy("displayName")
	.get();

```