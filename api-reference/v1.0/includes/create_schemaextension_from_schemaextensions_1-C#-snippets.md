
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var type = "String";

var name = "courseType";

var typeVar = "String";

var nameVar = "courseName";

var typeVarVar = "Integer";

var nameVarVar = "courseId";

//create ExtensionSchemaProperty list and populate it
var properties = new List<ExtensionSchemaProperty>();
properties.Add(new ExtensionSchemaProperty(nameVarVar,typeVarVar));
properties.Add(new ExtensionSchemaProperty(nameVar,typeVar));
properties.Add(new ExtensionSchemaProperty(name,type));

//create String list and populate it
var targetTypes = new List<String>();

//create instance of SchemaExtension
var schemaExtensions = new SchemaExtension
{
	Id = "graphlearn_courses",
	Description = "Graph Learn training courses extensions",
	TargetTypes = targetTypes,
	Properties = properties,
};

await graphClient.SchemaExtensions
	.Request()
	.AddAsync(schemaExtensions);

```