---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EducationSchool educationSchool = new EducationSchool();
educationSchool.displayName = "Fabrikam Arts High School";
educationSchool.description = "Magnate school for the arts. Los Angeles School District";

graphClient.education().schools("10002")
	.buildRequest()
	.patch(educationSchool);

```