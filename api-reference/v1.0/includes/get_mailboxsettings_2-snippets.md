#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var automaticRepliesSetting = await graphClient.Me.MailboxSettings.AutomaticRepliesSetting.Request().GetAsync();
*** 

```