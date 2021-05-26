---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var properties = new PrintDocumentUploadProperties
{
	DocumentName = "TestFile.pdf",
	ContentType = "application/pdf",
	Size = 4533322
};

await graphClient.Print.Shares["{printerShare-id}"].Jobs["{printJob-id}"].Documents["{printDocument-id}"]
	.CreateUploadSession(properties)
	.Request()
	.PostAsync();

```