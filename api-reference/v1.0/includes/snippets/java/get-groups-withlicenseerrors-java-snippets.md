---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new QueryOption("$filter", "hasMembersWithLicenseErrors+eq+true,"));

IGroupCollectionPage groups = graphClient.groups()
	.buildRequest( requestOptions )
	.select("id,displayName")
	.get();

```