#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var childFolders = await graphClient.Me.MailFolders["{id}"].ChildFolders.Request().GetAsync();

```