#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var masterCategories = await graphClient.Me.Outlook.MasterCategories.Request().GetAsync();
*** 

```