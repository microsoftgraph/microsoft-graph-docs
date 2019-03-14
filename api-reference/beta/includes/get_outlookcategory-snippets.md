#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var masterCategories = await graphClient.Me.Outlook.MasterCategories["de912e4d-c790-4da9-949c-ccd933aaa0f7"].Request().GetAsync();

```