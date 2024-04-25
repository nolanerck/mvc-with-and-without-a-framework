<cfoutput>
    <h1>User List</h1>

    <ul class="list-group">
        <cfloop query="rc.qUsers">
            <li class="list-group-item">
                <a href="#buildURL( 'user.detail' )#?userID=#rc.qUsers.UserID#">#rc.qUsers.FirstName# #rc.qUsers.LastName#</a>
            </li>
        </cfloop>
    </ul>
</cfoutput>
