---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new HeaderOption("Prefer", "return=minimal"));

OrgContactDeltaCollectionPage delta = graphClient.contacts()
	.delta()
	.buildRequest( requestOptions )
	.select("displayName,jobTitle,mail")
	.get();

```