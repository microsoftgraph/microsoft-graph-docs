#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var messages = await graphClient.Me.Messages.Request().Select("subject,body,bodyPreview,uniqueBody").GetAsync();

```