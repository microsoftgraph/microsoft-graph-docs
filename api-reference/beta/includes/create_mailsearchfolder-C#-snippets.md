
```CS

GraphServiceClient graphClient = new GraphServiceClient();

//create MailFolder list and populate it
var sourceFolderIDs = new List<MailFolder>();

//create instance of MailFolder
var childFolders = new MailFolder
{
	@odata.type = "microsoft.graph.mailSearchFolder",
	DisplayName = "Get MyAnalytics",
	IncludeNestedFolders = true,
	SourceFolderIDs = sourceFolderIDs,
	FilterQuery = "contains(subject, 'MyAnalytics')",
};

await graphClient.Me.MailFolders["searchfolders"].ChildFolders
	.Request()
	.AddAsync(childFolders);

```