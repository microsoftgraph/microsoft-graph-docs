#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var overrides = await graphClient.Me.InferenceClassification.Overrides.Request().GetAsync();
*** 

```