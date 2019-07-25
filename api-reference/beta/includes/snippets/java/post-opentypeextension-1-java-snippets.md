---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Message message = new Message();
message.subject = "Annual review";
ItemBody body = new ItemBody();
body.contentType = BodyType.HTML;
body.content = "You should be proud!";
message.body = body;
LinkedList<Recipient> toRecipientsList = new LinkedList<Recipient>();
Recipient toRecipients = new Recipient();
EmailAddress emailAddress = new EmailAddress();
emailAddress.address = "rufus@contoso.com";
toRecipients.emailAddress = emailAddress;
toRecipientsList.add(toRecipients);
message.toRecipients = toRecipientsList;
LinkedList<Extension> extensionsList = new LinkedList<Extension>();
Extension extensions = new Extension();
extensions.additionalDataManager().put("@odata.type", new JsonPrimitive("microsoft.graph.openTypeExtension"));
extensions.extensionName = "Com.Contoso.Referral";
extensions.companyName = "Wingtip Toys";
extensions.expirationDate = "2015-12-30T11:00:00Z";
extensions.dealValue = 10000;
extensionsList.add(extensions);
message.extensions = extensionsList;

graphClient.me().messages()
	.buildRequest()
	.post(message);

```