#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var overrides = await graphClient.Me.InferenceClassification.Overrides.Request().GetAsync();
*** 

```