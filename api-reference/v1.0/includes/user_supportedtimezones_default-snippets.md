#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var supportedTimeZones = await graphClient.Me.Outlook.SupportedTimeZones().Request().GetAsync();

```