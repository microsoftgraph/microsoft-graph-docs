---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PersonWebsite personWebsite = new PersonWebsite();
LinkedList<String> categoriesList = new LinkedList<String>();
categoriesList.add("football");
personWebsite.categories = categoriesList;
personWebsite.displayName = "Lyn Damer";
personWebsite.webUrl = "www.lyndamer.no";

graphClient.me().profile().websites()
	.buildRequest()
	.post(personWebsite);

```