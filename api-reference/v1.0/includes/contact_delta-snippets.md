#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var delta = await graphClient.Me.ContactFolders["{id}"].Contacts.Delta().Request().Select("displayName").GetAsync();

```