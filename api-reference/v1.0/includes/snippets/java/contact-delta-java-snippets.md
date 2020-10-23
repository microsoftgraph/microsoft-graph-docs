---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new HeaderOption("Prefer", "odata.maxpagesize=2"));

IContactDeltaCollectionPage delta = graphClient.me().contactFolders("{id}").contacts()
	.delta()
	.buildRequest( requestOptions )
	.select("displayName")
	.get();

```