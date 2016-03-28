# Groups, Plans and Tasks
The new Office 365 Tasks API enables you to create tasks and assign them to users in a group in Office 365.

## Basics
Before you get started with trying out the Tasks API, it is worth understanding how the main objects in Tasks API relate to each other as well as Office 365 groups.

### Groups
Office 365 groups are the owners of the plans in the Tasks API.
Today, each group can own no more than one plan.
To get the plans owned by a group, make the HTTP request below.

```http
GET /groups/<id>/plans
```
When creating a new plan, you need to make a group its owner by simply setting the `owner` property on a plan object to the id of a group object if the group does not already own a plan. 

**Note that you need to ensure that the user who is creating the plan is a member of the group. When you create a new group using the API, you are not automatically added to the group as a member. This has to be done using a separate API call.** 

### Plans
Plans are the containers of tasks. 
To create a task in a group, set the `planId` property on the task object to the id of the plan objected owned by the group.
To retrieve the tasks in a plan, make the HTTP request below.

```http
GET /plans/<id>/tasks
```
Each plan also has a plan details object which is created together with the plan object. 
To access the plan details object, make the following HTTP request.

```http
GET /plans/<id>/details
```

### Tasks
Each task can be assigned to a user by setting the `assignedTo` property on the task object to the id of the user object. 
It also has a task details object which is created together with the task object. 
To access the task details object, make the following HTTP request.

```http
GET /tasks/<id>/details
```

## API reference
The links on the left show the objects available in the Tasks API. 
Each object page link contains a description of the properties, relationships, and methods available on the object.
Explore the links on the left to learn more.