
<!-- markdownlint-disable MD041-->

When an application queries a relationship that returns a directoryObject type collection, if it does not have permission to read a certain derived type (like device), members of that type are returned but with limited information. With this behaviour applications can request the least privileged permissions they need, rather than rely on the set of Directory.* permissions. For details, see [Limited information returned for inaccessible member objects](/graph/permissions-reference#limited-information-returned-for-inaccessible-member-objects).

