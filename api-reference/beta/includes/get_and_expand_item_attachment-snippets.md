#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var attachments = await graphClient.Me.Messages.Messages.Attachments.Attachments.Request().GetAsync();
*** 

```