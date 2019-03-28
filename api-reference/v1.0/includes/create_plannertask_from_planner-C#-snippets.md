
```CS

GraphServiceClient graphClient = new GraphServiceClient();

//create instance of PlannerAssignments
var fbab97d0-4932-4511-b675-204639209557 = new PlannerAssignments
{
	@odata.type = "#microsoft.graph.plannerAssignment",
	OrderHint = " !",
};

//create instance of PlannerAssignments
var assignments = new PlannerAssignments
{
	Fbab97d0-4932-4511-b675-204639209557 = fbab97d0-4932-4511-b675-204639209557,
};

//create instance of PlannerTask
var tasks = new PlannerTask
{
	PlanId = "xqQg5FS2LkCp935s-FIFm2QAFkHM",
	BucketId = "hsOf2dhOJkqyYYZEtdzDe2QAIUCR",
	Title = "Update client list",
	Assignments = assignments,
};

await graphClient.Planner.Tasks
	.Request()
	.AddAsync(tasks);

```