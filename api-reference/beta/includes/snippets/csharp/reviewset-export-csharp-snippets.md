---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var outputName = "2020-12-06 Contoso investigation export";

var description = "Export for the Contoso investigation";

var exportOptions = Microsoft.Graph.Ediscovery.ExportOptions.OriginalFiles | Microsoft.Graph.Ediscovery.ExportOptions.FileInfo | Microsoft.Graph.Ediscovery.ExportOptions.Tags;

var exportStructure = Microsoft.Graph.Ediscovery.ExportFileStructure.Directory;

await graphClient.Compliance.Ediscovery.Cases["{ediscovery.case-id}"].ReviewSets["{ediscovery.reviewSet-id}"]
	.Export(exportStructure,outputName,description,null,null,exportOptions)
	.Request()
	.PostAsync();

```