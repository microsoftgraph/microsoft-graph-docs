#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var supportedLanguages = await graphClient.Me.Outlook.SupportedLanguages().Request().GetAsync();

```