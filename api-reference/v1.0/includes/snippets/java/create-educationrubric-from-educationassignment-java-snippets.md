---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EducationRubric educationRubric = new EducationRubric();
educationRubric.additionalDataManager().put("@odata.id", new JsonPrimitive("https://graph.microsoft.com/v1.0/education/me/rubrics/ceb3863e-6912-4ea9-ac41-3c2bb7b6672d"));

graphClient.education().classes("acdefc6b-2dc6-4e71-b1e9-6d9810ab1793").assignments("cf6005fc-9e13-44a2-a6ac-a53322006454").rubric().reference()
	.buildRequest()
	.put(educationRubric);

```