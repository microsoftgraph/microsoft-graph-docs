---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PersonInterest personInterest = new PersonInterest();
LinkedList<String> categoriesList = new LinkedList<String>();
categoriesList.add("Sports");
personInterest.categories = categoriesList;
personInterest.description = "World's greatest football club";
personInterest.displayName = "Chelsea FC";
personInterest.webUrl = "https://www.chelseafc.com";

graphClient.me().profile().interests()
	.buildRequest()
	.post(personInterest);

```