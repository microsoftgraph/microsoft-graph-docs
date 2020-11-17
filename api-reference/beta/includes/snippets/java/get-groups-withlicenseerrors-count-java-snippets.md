---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new HeaderOption("ConsistencyLevel", "eventual"));

IGroupCollectionPage groups = graphClient.groups()
	.buildRequest( requestOptions )
	.filter("hasMembersWithLicenseErrors+eq+true,")
	.select("id,displayName")
	.get();

```