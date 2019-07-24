---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ProgramControl programControl = new ProgramControl();
programControl.controlId = "7e59d237-2fb0-4e5d-b7bb-d4f9f9129213";
programControl.controlTypeId = "6e4f3d20-c5c3-407f-9695-8460952bcc68";
programControl.programId = "7e59d237-2fb0-4e5d-b7bb-d4f9f9129213";

graphClient.programControls()
	.buildRequest()
	.post(programControl);

```