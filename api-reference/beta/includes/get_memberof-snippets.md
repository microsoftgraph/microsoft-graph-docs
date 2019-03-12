#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var memberOf = await graphClient.Contacts.Contacts.MemberOf.Request().GetAsync();

```