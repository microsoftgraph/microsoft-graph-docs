#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var contactFolders = await graphClient.Me.ContactFolders.ContactFolders.Request().GetAsync();

```