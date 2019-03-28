
```CS

GraphServiceClient graphClient = new GraphServiceClient();

//create instance of Identity
var user = new Identity
{
	Id = "550fae72-d251-43ec-868c-373732c2704f",
	TenantId = "72f988bf-86f1-41af-91ab-2d7cd011db47",
	DisplayName = "Heidi Steen",
};

//create instance of IdentitySet
var identity = new IdentitySet
{
	User = user,
};

//create ParticipantInfo list and populate it
var targets = new List<ParticipantInfo>();
targets.Add(new ParticipantInfo(identity));

//create instance of Identity
var application = new Identity
{
	Id = "8A34A46B-3D17-4ADC-8DCE-DC4E7D572698",
};

//create instance of IdentitySet
var identity = new IdentitySet
{
	Application = application,
};

//create instance of ParticipantInfo
var source = new ParticipantInfo
{
	Identity = identity,
	LanguageId = "languageId-value",
	Region = "region-value",
};

var resourceId = "1D6DE2D4-CD51-4309-8DAA-70768651088F";

var uri = "https://cdn.contoso.com/cool.wav";

var resourceIdVar = "1D6DE2D4-CD51-4309-8DAA-70768651088E";

var uriVar = "https://cdn.contoso.com/beep.wav";

//create MediaConfig list and populate it
var preFetchMedia = new List<MediaConfig>();
preFetchMedia.Add(new MediaConfig(uriVar,resourceIdVar));
preFetchMedia.Add(new MediaConfig(uri,resourceId));

//create instance of MediaConfig
var mediaConfig = new MediaConfig
{
	@odata.type = "#microsoft.graph.serviceHostedMediaConfig",
	PreFetchMedia = preFetchMedia,
};

//create instance of Call
var calls = new Call
{
	CallbackUri = "https://bot.contoso.com/api/calls",
	MediaConfig = mediaConfig,
	Source = source,
	Subject = "Test Call",
	Targets = targets,
	TenantId = "tenantId-value",
};

await graphClient.App.Calls
	.Request()
	.AddAsync(calls);

```