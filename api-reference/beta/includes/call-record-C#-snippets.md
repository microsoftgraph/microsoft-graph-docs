
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var bargeInAllowed = True;

var clientContext = "d45324c1-fcb5-430a-902c-f20af696537c";

var loop = 5;

//create instance of Prompt
var mediaInfo = new Prompt
{
	Uri = "https://cdn.contoso.com/beep.wav",
	ResourceId = "1D6DE2D4-CD51-4309-8DAA-70768651088E",
};

var @odata.type = "#microsoft.graph.mediaPrompt";

//create Prompt list and populate it
var prompts = new List<Prompt>();
prompts.Add(new Prompt(@odata.type,mediaInfo,loop));

var maxRecordDurationInSeconds = 1800;

var initialSilenceTimeoutInSeconds = 10;

var maxSilenceTimeoutInSeconds = 2;

var recordingFormat = "wav";

var playBeep = True;

var streamWhileRecording = True;

//create Prompt list and populate it
var stopTones = new List<Prompt>();

await graphClient.App.Calls["{id}"]
	.record(prompts,bargeInAllowed,initialSilenceTimeoutInSeconds,maxSilenceTimeoutInSeconds,maxRecordDurationInSeconds,playBeep,streamWhileRecording,stopTones,clientContext);
	.Request()
	.PostAsync()

```