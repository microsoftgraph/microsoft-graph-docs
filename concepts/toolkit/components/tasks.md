---
title: "Tasks component in the Microsoft Graph Toolkit"
description: "The Tasks component enables the user to view, add, remove, complete, or edit tasks. It works with any tasks in Microsoft Planner or Microsoft To-Do."
localization_priority: Normal
author: benotter
---

# Tasks component in the Microsoft Graph Toolkit

The Tasks component enables the user to view, add, remove, complete, or edit tasks. It works with tasks in Microsoft Planner or Microsoft To-Do.  

In addition, a user is able to assign a single or multiple Microsoft Graph users to a task. For more details about Microsoft Graph assignments, see [plannerAssignments](/graph/api/resources/plannerassignments?view=graph-rest-1.0).

## Example

The following example displays the signed-in user's Microsoft Planner tasks using the `mgt-tasks` component. You can use the code editor to see how [properties](#properties) change the behavior of the component.

<iframe src="https://mgt.dev/iframe.html?id=components-mgt-tasks--tasks&source=docs" height="500"></iframe>

[Open this example in mgt.dev](https://mgt.dev/?path=/story/components-mgt-tasks--tasks&source=docs)

## Properties

| Attribute | Property | Description |
| -- | -- | -- |
| data-source="todo/planner" | dataSource | An enumeration to configure the data source for tasks - either Microsoft To-Do, or Microsoft Planner. Default is `planner`. |
| read-only | readOnly | A Boolean to set the task interface to be read only (no adding or removing tasks). Default is `false`. |
| hide-header | hideHeader | A Boolean to show or hide the header of the component. Default is `false`. |
| hide-options | hideOptions | A Boolean to show or hide the options in tasks. Default is `false`.
| initial-id="planner_id/folder_id" | initialId | A string ID to set the initially displayed planner or folder to the provided ID. |
| initial-bucket-id="bucket_id" | initialBucketId | A string ID to set the initially displayed bucket (Planner Data-Source Only) to the provided ID. |
| target-id="planner_id/folder_id"| targetId | A string ID to lock the tasks interface to the provided planner or folder ID. |
| target-bucket-id="bucket_id" |targetBucketId  | A string ID to lock the tasks interface to the provided bucket ID (Planner Data-Source Only). |
| group-id | groupId  | A string ID to lock the tasks interface to the group ID (Planner Data-Source Only). |
| N/A | isNewTaskVisible  | Determines whether new task view is visible at render. |
| N/A | taskFilter  | An optional function to filter which tasks are shown to the user. |

The following example shows only tasks from Planner with ID *12345* and does not allow the user to create new tasks.

```html
<mgt-tasks read-only initial-id="12345"></mgt-tasks>
```

The following example shows how to filter tasks that only have *category3* set.

```js
let taskView = document.querySelector('mgt-tasks');
taskView.taskFilter = task => task.appliedCategories.category3 === true;
```

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

--task-icon-background-completed
--task-icon-background

--task-icon-border-completed
--task-icon-border

--task-icon-color
--task-icon-color-completed

--task-icon-border-radius

--task-icon-alignment: flex-start (default) | center | flex-end
}
````

## Events
| Event | Detail | Description |
| --- | --- | --- |
| taskClick | The detail contains the respective `task` object | Fired when the user clicks or taps on a task. |

## Templates

The `tasks` component supports several [templates](../templates.md) that allow you to replace certain parts of the component. To specify a template, include a `<template>` element inside a component and set the `data-type` value to one of the following:

| Data type     | Data context              | Description                                                       |
| ---------     | ------------------------- | ----------------------------------------------------------------- |
| task     | task: a planner or to-do task object | replaces the whole default task. |
| task-details | task: a planner or to-do task object | template replaces the details section of the task. |

The following example defines a template for the tasks component.

```html
    <mgt-tasks data-source="todo">
      <template data-type="task-details">
        <div>
          Owner: {{task.owner}}
        </div>
        <div>
          Importance Level: {{task.importance}}
        </div>
      </template>
    </mgt-tasks>
```

## Microsoft Graph permissions

This control uses the following Microsoft Graph APIs and permissions.

| Resource | Permission |
| - | - |
| /me/planner/plans | Group.Read.All |
| /planner/plans/${id} | Group.Read.All, Group.ReadWrite.All |
| /planner/tasks | Group.ReadWrite.All |
| /me/outlook/taskGroups | Tasks.Read |
| /me/outlook/taskFolders | Tasks.Read, Tasks.ReadWrite |
| /me/outlook/tasks | Tasks.ReadWrite |
| /groups/${group-id}/planner/plans | Group.Read.All, Group.ReadWrite.All |

For the Microsoft Planner data source, fetching and reading tasks requires the Groups.Read.All permission. Adding, updating, or removing tasks requires the Groups.ReadWrite.All permission.

For the Microsoft Todo data source, the Tasks.Read permission is required for fetching and reading tasks. Adding, updating, or removing tasks requires the Tasks.ReadWrite permission.

## Authentication

The tasks component uses the global authentication provider described in the [authentication documentation](./../providers.md).