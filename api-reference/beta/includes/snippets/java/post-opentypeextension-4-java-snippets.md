---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Post post = new Post();
ItemBody body = new ItemBody();
body.contentType = BodyType.HTML;
body.content = "<html><body><div><div><div><div>When and where? </div></div></div></div></body></html>";
post.body = body;
LinkedList<Extension> extensionsList = new LinkedList<Extension>();
Extension extensions = new Extension();
extensions.additionalDataManager().put("@odata.type", new JsonPrimitive("microsoft.graph.openTypeExtension"));
extensions.extensionName = "Com.Contoso.HR";
extensions.companyName = "Contoso";
extensions.expirationDate = "2015-07-03T13:04:00Z";
LinkedList<String> topPicksList = new LinkedList<String>();
topPicksList.add("Employees only");
topPicksList.add("Add spouse or guest");
topPicksList.add("Add family");
extensions.topPicks = topPicksList;
extensionsList.add(extensions);
post.extensions = extensionsList;

graphClient.groups("37df2ff0-0de0-4c33-8aee-75289364aef6").threads("AAQkADJizZJpEWwqDHsEpV_KA==").posts("AAMkADJiUg96QZUkA-ICwMubAAC1heiSAAA=")
	.reply(post)
	.buildRequest()
	.post();

```