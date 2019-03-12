#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var automaticRepliesSetting = await graphClient.Me.MailboxSettings.AutomaticRepliesSetting.Request().GetAsync();

```