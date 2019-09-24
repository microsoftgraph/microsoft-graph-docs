---
title: "Tasks component in the Microsoft Graph Toolkit"
description: "The Tasks component enables the user to view, add, remove, complete, or edit tasks. It works with any tasks in Microsoft Planner or Microsoft To-Do."
localization_priority: Normal
author: benotter
---

# Tasks component in the Microsoft Graph Toolkit

The Tasks component enables the user to view, add, remove, complete, or edit tasks. It works with tasks in Microsoft Planner or Microsoft To-Do.

## Example

[jsfiddle example](https://jsfiddle.net/metulev/qhg68m31/)

````html
    <mgt-tasks></mgt-tasks>
````

## Properties

| Property | Attribute | Description |
| -- | -- | -- |
| `dataSource` | `data-source="todo/planner"` | Sets the data source for tasks - either Microsoft To-Do, or Microsoft Planner. Default is `planner`. |
| `readOnly` | `read-only` | Sets the task interface to be read only (no adding or removing tasks). Default is `false`. |
| `initialId` | `initial-id="planner_id/folder_id"` | Sets the initially displayed planner or folder to the provided ID. |
| `initialBucketId` | `initial-bucket-id="bucket_id"` | Sets the initially displayed bucket (Planner Data-Source Only) to the provided ID. |
| `targetId` | `target-id="planner_id/folder_id"` | Locks the tasks interface to the provided planner or folder ID. |
| `targetBucketId` | `target-bucket-id="bucket_id"` | Locks the tasks interface to the provided bucket ID (Planner Data-Source Only). |

The following is an example.

````html
<mgt-tasks read-only initial-id="12345"></mgt-tasks>
````

## Custom CSS variables

````css
mgt-tasks {
--tasks-header-padding
--tasks-header-margin 

--tasks-title-padding
--tasks-plan-title-font-size
--tasks-plan-title-padding

--tasks-new-button-width
--tasks-new-button-height
--tasks-new-button-color
--tasks-new-button-background
--tasks-new-button-border
--tasks-new-button-hover-background
--tasks-new-button-active-background

--tasks-new-task-name-margin

--task-margin
--task-box-shadow
--task-background
--task-border

--task-header-color
--task-header-margin

--task-detail-icon-margin

--task-new-margin
--task-new-border
--task-new-line-margin
--tasks-new-line-border
--task-new-input-margin
--task-new-input-padding
--task-new-input-font-size
--task-new-input-active-border
--task-new-select-border

--task-new-add-button-background
--task-new-add-button-disabled-background
--task-new-cancel-button-color

--task-complete-background
--task-complete-border
--task-complete-header-color
--task-complete-detail-color
--task-complete-detail-icon-color
}
````

## Microsoft Graph permissions

This control uses the following Microsoft Graph APIs and permissions.

| Resource | Permission/scope |
| - | - |
| /me/planner/plans | `Group.Read.All` |
| /planner/plans/${id} | `Group.Read.All`, `Group.ReadWrite.All` |
| /planner/tasks | `Group.ReadWrite.All` |
| /me/outlook/taskGroups | `Tasks.Read` |
| /me/outlook/taskFolders | `Tasks.Read`, `Tasks.ReadWrite` |
| /me/outlook/tasks | `Tasks.ReadWrite` |

For the Microsoft Planner data source, fetching and reading tasks requires the Groups.Read.All permission. Adding, updating, or removing tasks requires the Groups.ReadWrite.All permission.

For the Microsoft Todo data source, the Tasks.Read permission is required for fetching and reading tasks. Adding, updating, or removing tasks requires the Tasks.ReadWrite permission.

## Authentication

The tasks component uses the global authentication provider described in the [authentication documentation](./../providers.md).
