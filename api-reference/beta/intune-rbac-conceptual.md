# Role based access control in Microsoft Intune

Intune's role based access control determines who can perform actions on Intune objects and make changes for managed applications, users and devices.   Here are some key concepts to know:

* **Resource** – Resources are the Intune entities exposed through Microsoft Graph for which you grant permissions. For example, Policy and Mobile application are resources.
*	**Permissions** – An action that can be performed on a Resource.  For example, **Create**, **Read**, **Update**, **Delete**, and **Assign** are actions that you can do on a Resource.
*	**Member** – An Azure Active Directory Security Group which has the specified permissions.
*	**Scope** – Azure Active Directory security groups used by permissions that target users or devices. Some examples: **policy** -> **deploy**, **app** -> **assign**.
* **Role Definition** - a Role that lists one or more resources and their corresponding permissions.
* **Role Assignment** - A grouping of the members + the scope.  There can be one or more role assignments.
* **Role** – Role Definition + Role Assignment (Member + Scope)

To perform changes to Intune roles, the user who is logged in must be a member of either the Azure Active Directory (Azure AD) role **Intune Service Administrator** or The **Tenant Administrator** Azure AD role.   See the [Azure Active Directory role documentation](https://docs.microsoft.com/en-us/azure/active-directory/role-based-access-control-what-is) for additional information about these roles.

Intune's built-in roles have a fixed set of resources and permissions.  You cannot modify the permissions or resources associated with a built-in role.  You can add role assignments to built-in roles.

Custom roles provide complete flexibility in defining resources, permissions, members & scopes.
