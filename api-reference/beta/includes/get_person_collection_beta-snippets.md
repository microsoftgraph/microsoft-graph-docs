#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var people = await graphClient.Me.People.Request().GetAsync();

```