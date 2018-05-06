# Use the Planner REST API
You can use the Planner API in Microsoft Graph to create tasks and assign them to users in a group in Office 365.

Before you get started with Planner API, it is worth understanding how the main objects relate to each other as well as to Office 365 groups.

## Groups
Office 365 groups are the owners of the plans in the Planner API.
To [get the plans owned by a group](../api/plannergroup_list_plans.md), make the following HTTP request.

```http
GET /groups/{id}/planner/plans
```

When [creating a new plan](../api/planner_post_plans.md), make a group its owner by setting the `owner` property on a plan object. Plans must be owned by groups.

>**Note:** The user who is creating the plan must be a member of the group. When you create a new group using the API, you are not automatically added to the group as a member. This has to be done using a separate API call.

## Plans
[Plans](plannerplan.md) are the containers of [tasks](plannertask.md). 
To [create a task in a plan](../api/planner_post_tasks.md), set the `planId` property on the task object to the ID of the plan while creating the task.
Tasks currently cannot be created without plans.
To [retrieve the tasks in a plan](../api/plannerplan_list_tasks.md), make the following HTTP request.

```http
GET /planner/plans/{id}/tasks
```

## Tasks
Each task can be assigned to a user by adding an [assignment](plannerassignment.md) in the [assignments](plannerassignments.md) property on the task object.
The ID of the user to assign the task is the name of the open property on `assignments`, and the `orderHint` property on the assignment must be specified.

## Task and plan details 
Planner resources are arranged into basic objects and detail objects. Basic objects provide access to common properties of the resources, suitable for list views, while the detail objects provide access to large properties of the resources suitable for drill down views.

## Visualization
Aside from task and plan data, the Planner API also provides resources to provide common visualization of data across clients. Several types of visualization data are available for tasks:

| Tasks are shown as	  | Tasks are ordered with information from|
|:------------------|:----------|
|Flat list (tasks in a plan)| `orderHint` property on tasks|
|Flat list (tasks assigned to a user)| `assigneePriority` property on tasks|
|Board view with columns for assignees (assigned to task board)| [assignedToTaskBoardTaskFormat](plannerassignedToTaskBoardTaskFormat.md) object|
|Board view with columns for progress of the task towards completion (progress task board)| [progressTaskBoardTaskFormat](plannerprogressTaskBoardTaskFormat.md) object|
|Board view with custom columns of tasks (bucket task board):|[bucketTaskBoardTaskFormat](plannerbucketTaskBoardTaskFormat.md) object|

The custom columns in the bucket task board are represented by [bucket](plannerbucket.md) objects, and their order by `orderHint` property on the object.

All the ordering is controlled by the principles identified in [Planner order hints](planner_order_hint_format.md).

## Planner resource versioning

Planner versions all resources using etags. These etags are returned with `@odata.etag` property on each resource, and `PATCH` and `DELETE` requests require the last etag known by the client to be specified with `If-Match` header.
Planner allows changes to older versions of resources, if the intended change does not conflict with newer changes accepted by the Planner service on the same resource. The clients can identify which etag for the same resource is newer by calculating which etag value is greater in ordinal string comparison. 
Each resource has a separate etag. Etag values for different resources, including those with containment relationships, cannot be compared.
The client apps are expected to handle two versioning related error status codes 409 and 412 by reading the latest version of the item, and resolving the conflicting changes.

## Common Planner error conditions

In addition to [general errors](../../../concepts/errors.md) that apply to Microsoft Graph, some error conditions are specific to the Planner API.

### 400 Bad request

There are several common cases where the `POST` and `PATCH` requests can get a 400 status code. Common problems include:
* Open Type properties are not of correct types, or the type isn't specified, or they do not contain any properties. For example, [plannerAssignments](plannerAssignments.md) properties with complex values need to declare `@odata.type` property with value `microsoft.graph.plannerAssignment`.
* Order hint values do not have the [correct format](planner_order_hint_format.md). For example, an order hint value is being set directly to the value returned to the client.
* The data is logically inconsistent. For example, start date of task is later than due date of the task.

### 403 Forbidden

In addition to the general errors, the Planner API also returns this status code when a service-defined limit has been exceeded. If this is the case, the `code` property on the error resource type will indicate the type of the limit exceeded by the request.
The possible values for the limit types include:

| Value  | Description|
|:------------------|:----------|
|MaximumProjectsOwnedByUser|The maximum number of Plans owned by a group limit has been exceeded. This limit is based on the `owner` property on the [plannerPlan](plannerPlan.md) resource.|
|MaximumProjectsSharedWithUser|The maximum number of Plans shared with a user limit has been exceeded.  This limit is based on the `sharedWith` property on the [plannerPlanDetails](plannerPlanDetails.md) resource.|
|MaximumTasksCreatedByUser|The maximum number of Tasks created by a user limit has been exceeded. This limit is based on the `createdBy` property on the [plannerTask](plannerTask.md) resource.|
|MaximumTasksAssignedToUser|The maximum number of Tasks assigned to a user limit has been exceeded. This limit is based on the `assignments` property on the [plannerTask](plannerTask.md) resource.|
|MaximumTasksInProject|The maximum number of Tasks in a Plan limit has been exceeded. This limit is based on the `planId` property on the [plannerTask](plannerTask.md) resource.|
|MaximumActiveTasksInProject|The maximum number of Tasks that aren't completed in a Plan limit has been exceeded. This limit is based on the `planId` and `percentComplete` properties on the [plannerTask](plannerTask.md) resource.|
|MaximumBucketsInProject|The maximum number of Buckets in a Plan limit has been exceeded. This limit is based on the `planId` property on the [plannerBucket](plannerBucket.md) resource.|
|MaximumUsersSharedWithProject|The `sharedWith` property on the [plannerPlanDetails](plannerPlanDetails.md) resource contains too many values.|
|MaximumReferencesOnTask|The `references` property on the [plannerTaskDetails](plannerTaskDetails.md) resource contains too many values.|
|MaximumChecklistItemsOnTask|The `checklist` property on the [plannerTaskDetails](plannerTaskDetails.md) resource contains too many values.|
|MaximumAssigneesInTasks|The `assignments` property on the [plannerTask](plannerTask.md) resource contains too many values.|

### 412 Precondition Failed 

All `POST`, `PATCH` and `DELETE` requests in Planner API require `If-Match` header to be specified with the last etag value seen of the resource that is subject to the request.
Additionally, 412 status code can be returned if the etag value specified in the request no longer matches a version of the resource in the service. In this case, the clients should read the resource again and obtain a new etag.

