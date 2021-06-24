---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<String> hubSiteUrlsList = new LinkedList<String>();
hubSiteUrlsList.add("https://graph.microsoft.com/beta/sites/id");

Boolean propagateToExistingLists = false;

graphClient.sites("id").contentTypes("id")
	.associateWithHubSites(ContentTypeAssociateWithHubSitesParameterSet
		.newBuilder()
		.withHubSiteUrls(hubSiteUrlsList)
		.withPropagateToExistingLists(propagateToExistingLists)
		.build())
	.buildRequest()
	.post();

```