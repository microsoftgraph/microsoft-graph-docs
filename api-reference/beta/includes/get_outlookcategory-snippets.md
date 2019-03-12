#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var masterCategories = await graphClient.Me.Outlook.MasterCategories.MasterCategories.Request().GetAsync();

```