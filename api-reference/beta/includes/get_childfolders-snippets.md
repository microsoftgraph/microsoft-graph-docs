#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var childFolders = await graphClient.Me.MailFolders.MailFolders.ChildFolders.Request().GetAsync();
*** 

```