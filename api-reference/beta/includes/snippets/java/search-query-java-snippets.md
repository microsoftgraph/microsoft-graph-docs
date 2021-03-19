---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<SearchRequest> requestsList = new LinkedList<SearchRequest>();
SearchRequest requests = new SearchRequest();
LinkedList<EntityType> entityTypesList = new LinkedList<EntityType>();
entityTypesList.add(EntityType.EXTERNAL_ITEM);
requests.entityTypes = entityTypesList;
LinkedList<String> contentSourcesList = new LinkedList<String>();
contentSourcesList.add("/external/connections/connectionfriendlyname");
requests.contentSources = contentSourcesList;
SearchQuery query = new SearchQuery();
query.queryString = "contoso product";
requests.query = query;
requests.from = 0;
requests.size = 25;
LinkedList<String> fieldsList = new LinkedList<String>();
fieldsList.add("title");
fieldsList.add("description");
requests.fields = fieldsList;

requestsList.add(requests);

graphClient.search()
	.query(SearchEntityQueryParameterSet
		.newBuilder()
		.withRequests(requestsList)
		.build())
	.buildRequest()
	.post();

```