---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new HeaderOption("Prefer", "respond-async"));

Schema schema = new Schema();
schema.baseType = "microsoft.graph.externalItem";
LinkedList<Property> propertiesList = new LinkedList<Property>();
Property properties = new Property();
properties.name = "ticketTitle";
properties.type = PropertyType.STRING;
properties.isSearchable = false;
properties.isRetrievable = false;
LinkedList<Label> labelsList = new LinkedList<Label>();
labelsList.add(Label.TITLE);
properties.labels = labelsList;
propertiesList.add(properties);
Property properties1 = new Property();
properties1.name = "priority";
properties1.type = PropertyType.STRING;
properties1.isQueryable = false;
properties1.isRetrievable = false;
properties1.isSearchable = false;
propertiesList.add(properties1);
Property properties2 = new Property();
properties2.name = "assignee";
properties2.type = PropertyType.STRING;
properties2.isRetrievable = false;
propertiesList.add(properties2);
schema.properties = propertiesList;

graphClient.external().connections("contosohr").schema()
	.buildRequest( requestOptions )
	.post(schema);

```