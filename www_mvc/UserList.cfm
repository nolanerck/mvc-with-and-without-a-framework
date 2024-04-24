<cfquery name="qUsers">
    SELECT *
    FROM tUsers
</cfquery>

<cf_HeaderAndFooter>
    <cfoutput>
    <h1>User List</h1>

        <ul class="list-group">
            <cfloop query="qUsers">
                <li class="list-group-item">
                    <a href="UserDetail.cfm?userID=#qUsers.UserID#">#qUsers.FirstName# #qUsers.LastName#</a>
                </li>
            </cfloop>
        </ul>
    </cfoutput>
</cf_HeaderAndFooter>
