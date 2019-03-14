#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var tasks = await graphClient.Me.Outlook.Tasks["AAMkADA1MHgwAAA="].Request().GetAsync();

```