---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var stream = new List<Stream>()
{
	new Stream
	{
		Target = "#para-id",
		Action = "insert",
		Position = "before",
		Content = "<img src=\"image-url-or-part-name\" alt=\"image-alt-text\" />"
	},
	new Stream
	{
		Target = "#list-id",
		Action = "append",
		Content = "<li>new-page-content</li>"
	}
};

var pages = new OnenotePage();
pages.Content = content;

await graphClient.Me.Onenote.Pages["{id}"].Content
	.Request()
	.UpdateAsync(pages);

```