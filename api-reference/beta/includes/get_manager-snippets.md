#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var manager = await graphClient.Contacts.Contacts.Manager.Request().GetAsync();

```