---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String address = "Sheet1!A1:D5";

boolean hasHeaders = true;

graphClient.me().drive().items("{id}").workbook().tables()
	.add(address,hasHeaders)
	.buildRequest()
	.post();

```