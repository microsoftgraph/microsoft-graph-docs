
```CS

GraphServiceClient graphClient = new GraphServiceClient();

//create instance of AgreementFileData
var fileData = new AgreementFileData
{
	Data = "SGVsbG8gd29ybGQ=",
};

var isDefault = True;

var language = "en";

var fileName = "TOU.pdf";

//create AgreementFile list and populate it
var files = new List<AgreementFile>();
files.Add(new AgreementFile(fileName,language,isDefault,fileData));

//create instance of Agreement
var agreements = new Agreement
{
	DisplayName = "MSGraph Sample",
	IsViewingBeforeAcceptanceRequired = true,
	Files = files,
};

await graphClient.Agreements
	.Request()
	.AddAsync(agreements);

```