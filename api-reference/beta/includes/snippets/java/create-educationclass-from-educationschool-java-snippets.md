---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EducationClass educationClass = new EducationClass();
educationClass.additionalDataManager().put("@odata.id", new JsonPrimitive("https://graph.microsoft.com/beta/education/classes/11006"));

graphClient.education().schools("10002").classes().references()
	.buildRequest()
	.post(educationClass);

```