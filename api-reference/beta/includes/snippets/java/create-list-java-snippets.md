---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

List list = new List();
list.displayName = "Books";
LinkedList<ColumnDefinition> columnsList = new LinkedList<ColumnDefinition>();
ColumnDefinition columns = new ColumnDefinition();
columns.name = "Author";
TextColumn text = new TextColumn();
columns.text = text;
columnsList.add(columns);
ColumnDefinition columns1 = new ColumnDefinition();
columns1.name = "PageCount";
NumberColumn number = new NumberColumn();
columns1.number = number;
columnsList.add(columns1);
ColumnDefinitionCollectionResponse columnDefinitionCollectionResponse = new ColumnDefinitionCollectionResponse();
columnDefinitionCollectionResponse.value = columnsList;
ColumnDefinitionCollectionPage columnDefinitionCollectionPage = new ColumnDefinitionCollectionPage(columnDefinitionCollectionResponse, null);
list.columns = columnDefinitionCollectionPage;
ListInfo list = new ListInfo();
list.template = "genericList";
list.list = list;

graphClient.sites("{site-id}").lists()
	.buildRequest()
	.post(list);

```