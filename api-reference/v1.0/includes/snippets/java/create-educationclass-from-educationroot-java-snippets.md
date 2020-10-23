---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EducationClass educationClass = new EducationClass();
educationClass.description = "Health Level 1";
educationClass.classCode = "Health 501";
educationClass.displayName = "Health 1";
educationClass.externalId = "11019";
educationClass.externalName = "Health Level 1";
educationClass.externalSource = EducationExternalSource.SIS;
educationClass.mailNickname = "fineartschool.net";

graphClient.education().classes()
	.buildRequest()
	.post(educationClass);

```