---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SkillProficiency skillProficiency = new SkillProficiency();
LinkedList<String> categoriesList = new LinkedList<String>();
categoriesList.add("Professional");
skillProficiency.categories = categoriesList;
skillProficiency.proficiency = SkillProficiencyLevel.ADVANCED_PROFESSIONAL;

graphClient.me().profile().skills("{id}")
	.buildRequest()
	.patch(skillProficiency);

```