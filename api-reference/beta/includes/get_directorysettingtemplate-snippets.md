#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var directorySettingTemplates = await graphClient.DirectorySettingTemplates["{id}"].Request().GetAsync();

```