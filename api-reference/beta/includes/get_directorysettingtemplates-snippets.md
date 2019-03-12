#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var directorySettingTemplates = await graphClient.DirectorySettingTemplates.Request().GetAsync();
*** 

```