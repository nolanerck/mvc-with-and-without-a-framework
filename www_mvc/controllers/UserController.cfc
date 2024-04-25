<cfcomponent>

    <cffunction access="remote" name="saveUser">
        <cfargument name="UserID" />
        <cfargument name="FirstName" />
        <cfargument name="LastName" />
        <cfargument name="Email" />

        <cfset var objUser = new model.User() />

        <cfset objUser.saveUser( arguments.UserID, arguments.FirstName, arguments.LastName, arguments.Email ) />

        <cflocation url="../UserList.cfm" addtoken="false" />

    </cffunction>

</cfcomponent>