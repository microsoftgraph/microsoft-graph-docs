#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var groupSettingTemplates = await graphClient.GroupSettingTemplates.GroupSettingTemplates.Request().GetAsync();
*** 

```