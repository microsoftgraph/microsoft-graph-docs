#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var directorySettingTemplates = await graphClient.DirectorySettingTemplates.DirectorySettingTemplates.Request().GetAsync();
*** 

```