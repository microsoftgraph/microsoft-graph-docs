---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EducationFeedbackOutcome educationOutcome = new EducationFeedbackOutcome();
EducationFeedback feedback = new EducationFeedback();
EducationItemBody text = new EducationItemBody();
text.content = "This is feedback for the assignment as a whole.";
text.contentType = BodyType.TEXT;
feedback.text = text;
educationOutcome.feedback = feedback;

graphClient.education().me().assignments("{id}").submissions("{id}").outcomes("{id}")
	.buildRequest()
	.patch(educationOutcome);

```