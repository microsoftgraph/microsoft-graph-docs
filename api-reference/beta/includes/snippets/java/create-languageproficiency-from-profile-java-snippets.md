---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LanguageProficiency languageProficiency = new LanguageProficiency();
languageProficiency.displayName = "Norwegian Bokmål";
languageProficiency.tag = "nb-NO";
languageProficiency.spoken = LanguageProficiencyLevel.NATIVE_OR_BILINGUAL;
languageProficiency.written = LanguageProficiencyLevel.NATIVE_OR_BILINGUAL;
languageProficiency.reading = LanguageProficiencyLevel.NATIVE_OR_BILINGUAL;

graphClient.me().profile().languages()
	.buildRequest()
	.post(languageProficiency);

```