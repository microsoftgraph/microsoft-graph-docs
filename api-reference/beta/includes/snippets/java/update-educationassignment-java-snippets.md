---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EducationAssignment educationAssignment = new EducationAssignment();
educationAssignment.displayName = "Week 1 reading assignment";
EducationItemBody instructions = new EducationItemBody();
instructions.contentType = BodyType.TEXT;
instructions.content = "Read chapters 1 through 3";
educationAssignment.instructions = instructions;
educationAssignment.dueDateTime = CalendarSerializer.deserialize("2014-02-01T00:00:00Z");

graphClient.education().classes("11021").assignments("19002")
	.buildRequest()
	.patch(educationAssignment);

```