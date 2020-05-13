---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new HeaderOption("Prefer", "return=minimal"));

IOrgContactDeltaCollectionPage delta = graphClient.contacts()
	.delta()
	.buildRequest( requestOptions )
	.select("displayName,jobTitle,mail")
	.get();

```