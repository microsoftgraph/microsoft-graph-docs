#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var childFolders = await graphClient.Me.MailFolders["AAMkAGVmMDEzM"].ChildFolders.Request().GetAsync();

```