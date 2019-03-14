#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var events = await graphClient.Me.Events["AAMkAGI1AAAoZDOFAAA="].Request().Select("subject,body,bodyPreview").GetAsync();

```