<cfcomponent>

    <cffunction name="init">
        <cfreturn this />
    </cffunction>

    <cffunction name="getAllUsers" returntype="query">

        <cfset var qUsers = "" />

        <cfquery name="qUsers">
            SELECT UserID, FirstName, LastName, Password, Email
            FROM tUsers
        </cfquery>

        <cfreturn qUsers />

    </cffunction>

    <cffunction name="getUserDetails" returntype="query">
        <cfargument name="UserID" />

        <cfset var qUser = "" />

        <cfquery name="qUser">
            SELECT UserID, FirstName, LastName, Password, Email
            FROM tUsers
            WHERE UserID = <cfqueryparam value="#arguments.UserID#" cfsqltype="cf_sql_integer" />
        </cfquery>

        <cfreturn qUser />
    </cffunction>

    <cffunction name="saveUser" returntype="void">
        <cfargument name="UserID" />
        <cfargument name="FirstName" />
        <cfargument name="LastName" />
        <cfargument name="Email" />

        <cfset var qSaveUser = "" />

        <cfquery name="qSaveUser">
            UPDATE tUsers
               SET  FirstName = <cfqueryparam value="#arguments.FirstName#" cfsqltype="cf_sql_varchar" />,
                    LastName = <cfqueryparam value="#arguments.LastName#" cfsqltype="cf_sql_varchar" />,
                    Email = <cfqueryparam value="#arguments.Email#" cfsqltype="cf_sql_varchar" />
            WHERE UserID = <cfqueryparam value="#arguments.UserID#" cfsqltype="cf_sql_integer" />
        </cfquery>

    </cffunction>

</cfcomponent>