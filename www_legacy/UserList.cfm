<cfquery name="qUsers">
    SELECT *
    FROM tUsers
</cfquery>

<cf_HeaderAndFooter>
    <cfoutput>
    <h1>User List</h1>

        <ul>
            <cfloop query="qUsers">
                <li>
                    <a href="UserDetail.cfm?userID=#qUsers.UserID#">#qUsers.FirstName# #qUsers.LastName#</a>
                </li>
            </cfloop>
        </ul>
    </cfoutput>
</cf_HeaderAndFooter>
