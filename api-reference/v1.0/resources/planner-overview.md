---
title: "Use the Planner REST API"
description: "You can use the Planner API in Microsoft Graph to create tasks and assign them to users in a group in Microsoft 365."
author: "TarkanSevilmis"
localization_priority: Priority
ms.prod: "planner"
doc_type: conceptualPageType
---

# Use the Planner REST API

You can use the Planner API in Microsoft Graph to create tasks and assign them to users in a group in Microsoft 365.

Before you get started with Planner API, you will want to understand how the main objects relate to each other as well as to Microsoft 365 groups.

## Microsoft 365 groups

Microsoft 365 groups are the owners of the plans in the Planner API.
To [get the plans owned by a group](../api/plannergroup-list-plans.md), make the following HTTP request.

``` http
GET /groups/{group-id}/planner/plans
```

When [creating a new plan](../api/planner-post-plans.md), make a group its owner by setting the `owner` property on a plan object. Plans must be owned by groups.

>**Note:** The user who is creating the plan must be a member of the group that will own the plan. When you create a new group by using [Create group](../api/group-post-groups.md), you are not added to the group as a member. After the group is created, add yourself as a member by using [group post members](../api/group-post-members.md).

## Plans

[Plans](plannerplan.md) are the containers of [tasks](plannertask.md). 
To [create a task in a plan](../api/planner-post-tasks.md), set the `planId` property on the task object to the ID of the plan while creating the task.
Tasks currently cannot be created without plans.
To [retrieve the tasks in a plan](../api/plannerplan-list-tasks.md), make the following HTTP request.

``` http
GET /planner/plans/{plan-id}/tasks
```

## Tasks

Each task can be assigned to a user by adding an [assignment](plannerassignment.md) in the [assignments](plannerassignments.md) property on the task object.
The ID of the user to assign the task is the name of the open property on `assignments`, and the `orderHint` property on the assignment must be specified.

## Task and plan details 

Planner resources are arranged into basic objects and detail objects. Basic objects provide access to common properties of the resources, suitable for list views, while the detail objects provide access to large properties of the resources suitable for drill down views.

## Visualization

Aside from task and plan data, the Planner API also provides resources for creating a common visualization of data across clients. Several types of visualization data are available for tasks, as listed in the following table.

| Tasks are shown as                                                                        | Tasks are ordered with information from                                         |
| :---------------------------------------------------------------------------------------- | :------------------------------------------------------------------------------ |
| Flat list (tasks in a plan)                                                               | `orderHint` property on tasks                                                   |
| Flat list (tasks assigned to a user)                                                      | `assigneePriority` property on tasks                                            |
| Board view with columns for assignees (assigned to task board)                            | [assignedToTaskBoardTaskFormat](plannerassignedtotaskboardtaskformat.md) object |
| Board view with columns for progress of the task towards completion (progress task board) | [progressTaskBoardTaskFormat](plannerprogresstaskboardtaskformat.md) object     |
| Board view with custom columns of tasks (bucket task board):                              | [bucketTaskBoardTaskFormat](plannerbuckettaskboardtaskformat.md) object         |

The custom columns in the bucket task board are represented by [bucket](plannerbucket.md) objects, and their order by `orderHint` property on the object.

All the ordering is controlled by the principles described in [Planner order hints](planner-order-hint-format.md).

## Planner resource versioning

Planner versions all resources using **etags**. These **etags** are returned with `@odata.etag` property on each resource. `PATCH` and `DELETE` requests require the last **etag** known by the client to be specified with a `If-Match` header.
Planner allows changes to older versions of resources, if the intended change does not conflict with newer changes accepted by the Planner service on the same resource. The clients can identify which **etag** for the same resource is newer by calculating which **etag** value is greater in ordinal string comparison. 
Each resource has a unique **etag**. Etag values for different resources, including those with containment relationships, cannot be compared.
The client apps are expected to handle versioning related [error codes](/graph/errors) **409** and **412** by reading the latest version of the item and resolving the conflicting changes.

## Common Planner error conditions

In addition to [general errors](/graph/errors) that apply to Microsoft Graph, some error conditions are specific to the Planner API.

### 400 Bad request

In some common scenarios, `POST` and `PATCH` requests can return a 400 status code. The following are some of the common causes:

* Open Type properties are not of correct types, or the type isn't specified, or they do not contain any properties. For example, [plannerAssignments](plannerassignments.md) properties with complex values need to declare `@odata.type` property with value `microsoft.graph.plannerAssignment`.
* Order hint values do not have the [correct format](planner-order-hint-format.md). For example, an order hint value is being set directly to the value returned to the client.
* The data is logically inconsistent. For example, start date of task is later than due date of the task.

### 403 Forbidden

In addition to the general errors, the Planner API also returns the 403 status code when a service-defined limit has been exceeded. If this is the case, the `code` property on the error resource type will indicate the type of the limit exceeded by the request.
The following are the possible values for the limit types.

| Value                         | Description                                                                                                                                                                                              |
| :---------------------------- | :------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| MaximumProjectsOwnedByUser    | The maximum number of Plans owned by a group limit has been exceeded. This limit is based on the `owner` property on the [plannerPlan](plannerplan.md) resource.                                         |
| MaximumProjectsSharedWithUser | The maximum number of Plans shared with a user limit has been exceeded.  This limit is based on the `sharedWith` property on the [plannerPlanDetails](plannerplandetails.md) resource.                   |
| MaximumTasksCreatedByUser     | The maximum number of Tasks created by a user limit has been exceeded. This limit is based on the `createdBy` property on the [plannerTask](plannertask.md) resource.                                    |
| MaximumTasksAssignedToUser    | The maximum number of Tasks assigned to a user limit has been exceeded. This limit is based on the `assignments` property on the [plannerTask](plannertask.md) resource.                                 |
| MaximumTasksInProject         | The maximum number of Tasks in a Plan limit has been exceeded. This limit is based on the `planId` property on the [plannerTask](plannertask.md) resource.                                               |
| MaximumActiveTasksInProject   | The maximum number of Tasks that aren't completed in a Plan limit has been exceeded. This limit is based on the `planId` and `percentComplete` properties on the [plannerTask](plannertask.md) resource. |
| MaximumBucketsInProject       | The maximum number of Buckets in a Plan limit has been exceeded. This limit is based on the `planId` property on the [plannerBucket](plannerbucket.md) resource.                                         |
| MaximumUsersSharedWithProject | The `sharedWith` property on the [plannerPlanDetails](plannerplandetails.md) resource contains too many values.                                                                                          |
| MaximumReferencesOnTask       | The `references` property on the [plannerTaskDetails](plannertaskdetails.md) resource contains too many values.                                                                                          |
| MaximumChecklistItemsOnTask   | The `checklist` property on the [plannerTaskDetails](plannertaskdetails.md) resource contains too many values.                                                                                           |
| MaximumAssigneesInTasks       | The `assignments` property on the [plannerTask](plannertask.md) resource contains too many values.                                                                                                       |
| MaximumPlannerPlans       | The group already contains a Plan. Currently, groups can only contain one Plan. **Note:** Some Microsoft apps can exceed this limit. In the future, we will extend this capability to all apps.                                                                                                      |

### 412 Precondition Failed 

All Planer API `POST`, `PATCH`, and `DELETE` requests require the `If-Match` header to be specified with the last known etag value of the resource that is subject to the request.
The 412 status code can also be returned if the etag value specified in the request no longer matches a version of the resource in the service. In this case, the clients should read the resource again and get a new etag.

## What's new
Find out about the [latest new features and updates](/graph/whats-new-overview) for this API set.


