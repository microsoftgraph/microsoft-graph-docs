---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new QueryOption("$filter", "id eq 'b1c5353a-7aca-41b3-830f-27d5218fe0e5'"));

ITeamsAppCollectionPage teamsApps = graphClient.appCatalogs().teamsApps()
	.buildRequest( requestOptions )
	.get();

```