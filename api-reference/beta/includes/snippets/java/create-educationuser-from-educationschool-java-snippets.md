---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EducationUser educationUser = new EducationUser();
educationUser.additionalDataManager().put("@odata.id", new JsonPrimitive("https://graph.microsoft.com/beta/education/users/14008"));

graphClient.education().schools("{id}").users().references()
	.buildRequest()
	.post(educationUser);

```