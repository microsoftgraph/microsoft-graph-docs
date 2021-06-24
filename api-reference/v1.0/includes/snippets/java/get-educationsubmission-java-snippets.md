---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EducationSubmission educationSubmission = graphClient.education().classes("11010").assignments("ad8afb28-c138-4ad7-b7f5-a6986c2655a8").submissions("33223")
	.buildRequest()
	.get();

```