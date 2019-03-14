#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var messages = await graphClient.Me.Messages["AAMkAGI1AAAoZCfHAAA="].Request().Select("subject,body,bodyPreview,uniqueBody").GetAsync();

```