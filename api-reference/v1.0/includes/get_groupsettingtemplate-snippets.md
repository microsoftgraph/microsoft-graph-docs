#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var groupSettingTemplates = await graphClient.GroupSettingTemplates["{id}"].Request().GetAsync();

```