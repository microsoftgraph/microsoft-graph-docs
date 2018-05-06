# Use the Planner REST API

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

You can use the Planner API in Microsoft Graph to create tasks and assign them to users in a group in Office 365.

Before you get started with Planner API, it is worth understanding how the main objects relate to each other as well as to Office 365 groups.

## Groups
Office 365 groups are the owners of the plans in the Planner API.
To [get the plans owned by a group](../api/plannergroup_list_plans.md), make the following HTTP request.

```http
GET /groups/{id}/planner/plans
```

When [creating a new plan](../api/planner_post_plans.md), give the plan a group owner by setting the `owner` property on a plan object. A plan must be owned by a group. A group can own multiple plans.

>**Note:** The user who is creating the plan must be a member of the group that will own the plan. When you create a new group by using using [Create group](../api/group_post_groups.md), you are not added to the group as a member. After the group is created, add yourself as a member by using [group post members](../api/group_post_members.md).

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
Planner resources are arranged into basic task and plan objects and detail task and plan objects. Basic objects provide access to common properties of the resources, suitable for list views, while the detail objects provide access to large properties of the resources suitable for drill down views.

## Visualization
Aside from task and plan data, the Planner API also provides resources to provide common visualization of data across clients. Several types of visualization data are available for tasks:

| Tasks are shown as | Tasks are ordered with information from|
|:-------------------|:---------------------------------------|
|Flat list (tasks in a plan)| `orderHint` property on tasks|
|Flat list (tasks assigned to a user)| `assigneePriority` property on tasks|
|Board view with columns for assignees (assigned to task board)| [assignedToTaskBoardTaskFormat](plannerassignedToTaskBoardTaskFormat.md) object|
|Board view with columns for progress of the task towards completion (progress task board)| [progressTaskBoardTaskFormat](plannerprogressTaskBoardTaskFormat.md) object|
|Board view with custom columns of tasks (bucket task board):|[bucketTaskBoardTaskFormat](plannerbucketTaskBoardTaskFormat.md) object|

The custom columns in the bucket task board are represented by [bucket](plannerbucket.md) objects, and their order by `orderHint` property on the object.

All the ordering is controlled by the principles identified in [Planner order hints](planner_order_hint_format.md).

## <a name="delta">Track changes using delta query</a>

Planner's delta query supports querying objects that the user is subscribed to.

Users are subscribed to the following objects.

|Planner resource type|Subscribed instances|
|:--------------------|:-------------------|
|Tasks | <ul><li>Created by the user</li><li>Assigned to the user</li><li>Belong to a plan that the user owns</li><li>Contained in a plan shared with the user through the plan's **SharedWith** collection</li> |
|Plans | <ul><li>Shared with the user through the plan's **SharedWith** collection</li></ul> |
|Buckets | <ul><li>Contained in a plan shared with the user through the plan's **SharedWith** collection</li></ul> | 

### <a name="objectcache">Populate the object cache for delta queries</a>

If you want to use the Planner delta query API, maintain a local cache of objects that the user is interested in observing in order to apply the changes from the delta response feed.

The delta payload objects that the Planner delta query can currently return will be of the following types:

* [plannerTask](plannertask.md)
* [plannerTaskDetails](plannertaskdetails.md)
* [plannerPlan](plannerplan.md)
* [plannerPlanDetails](plannerplandetails.md)
* [plannerBucket](plannerbucket.md)
* [plannerAssignedToTaskBoardTaskFormat](plannerassignedtotaskboardtaskformat.md)
* [plannerBucketTaskBoardTaskFormat](plannerbuckettaskboardtaskformat.md)
* [plannerAssignedToTaskBoardTaskFormat](plannerassignedtotaskboardtaskformat.md)

Use the corresponding `GET` methods on the resource to obtain the initial state of objects to be populated into the local cache.

### Differentiating between object creation and object modification

In certain scenarios, the caller might want to distinguish between object creation and object modification within Planner's delta query feed.

These guidelines can be used to infer object creation:

* The `createdBy` property will only appear on newly created objects.
* A newly created `plannerTask` object will be followed by its corresponding `plannerTaskDetails` object.
* A newly created `plannerPlan` object will be followed by its corresponding `plannerPlanDetails` object.

### Usage

The caller is expected to have a cache containing subscribed objects. For details about how to fill the local cache of subscribed objects, see [Populate the object cache for delta queries](#populate-the-object-cache-for-delta-queries).

Planner's delta query call flow is as follows:

1. The caller initiates a delta sync query, obtaining a `nextLink` and an empty collection of changes.
2. The caller must [populate the object cache for delta queries](#populate-the-object-cache-for-delta-queries) with objects that the user is subscribed to, updating its cache.
3. The caller follows the `nextLink` provided in the initial delta sync query to obtain a new `deltaLink` to any changes since previous step.
4. The caller applies the changes in the returned delta response to the objects in its cache.
5. The caller follows the new deltaLink to obtain the next deltaLink and changes since the current `deltaLink` was generated.
6. The caller applies the changes (if any) and waits a short time before rerunning the previous step and this step.

## Planner resource versioning

Planner versions all resources using **etags**. These **etags** are returned with `@odata.etag` property on each resource. `PATCH` and `DELETE` requests require the last **etag** known by the client to be specified with a `If-Match` header.
Planner allows changes to older versions of resources if the intended change does not conflict with newer changes accepted by the Planner service on the same resource. The clients can identify which **etag** for the same resource is newer by calculating which **etag** value is greater in ordinal string comparison. 
Each resource has a unique **etag**. Etag values for different resources, including those with containment relationships, cannot be compared.
The client apps are expected to handle versioning related [error codes](../../../concepts/errors.md) **409** and **412** by reading the latest version of the item and resolving the conflicting changes.

## Common Planner error conditions

In addition to [general errors](../../../concepts/errors.md) that apply to Microsoft Graph, some error conditions are specific to the Planner API.

### 400 Bad request

There are several common cases where the `POST` and `PATCH` requests can get a 400 status code. Common problems include:
* Open Type properties are not of correct types.
* The type isn't specified.
* The request does not contain any properties.

**Example**

[plannerAssignments](plannerAssignments.md) properties with complex values need to declare `@odata.type` property with value `microsoft.graph.plannerAssignment`.
* Order hint values do not have the [correct format](planner_order_hint_format.md).

   For example, an order hint value is being set directly to the value returned to the client.
* The data is logically inconsistent.

   For example, start date of task is later than due date of the task.

### Planner error status codes
In addition to general error status codes, Planner indicates special error conditions by returning the following codes.

#### 403 Forbidden

The Planner API returns the **403** status code when a service-defined limit has been exceeded. In this case, the `code` property on the error resource type indicates the type of the limit exceeded by the request.
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
|MaximumFavoritePlansForUser| The `favoritePlanReferences` property on the [plannerUser](plannerUser.md) resource contains too many values.|
|MaximumRecentPlansForUser| The `recentPlanReferences` property on the [plannerUser](plannerUser.md) resource contains too many values.|
|MaximumContextsOnPlan| The `contexts` proeprty on the [plannerPlan](plannerPlan.md) resource contains too many values.|

#### 412 Precondition Failed

All `POST`, `PATCH` and `DELETE` requests in Planner API require `If-Match` header to be specified with the last etag value seen of the resource that is subject to the request.
Additionally, 412 status code can be returned if the etag value specified in the request no longer matches a version of the resource in the service. In this case, the clients should read the resource again and obtain a new etag.

