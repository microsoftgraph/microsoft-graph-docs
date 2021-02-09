---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var printSettings = new PrintSettings
{
	DocumentConversionEnabled = true
};

var print = new Print();
print.Settings = printSettings;

await graphClient.Print
	.Request()
	.UpdateAsync(print);

```