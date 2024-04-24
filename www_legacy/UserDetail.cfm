<cfif cgi.REQUEST_METHOD eq "post">

    <cfquery name="qUpdateUser">
        UPDATE tUsers
           SET FirstName = <cfqueryparam value="#form.FirstName#" cfsqltype="cf_sql_varchar" />,
               LastName = <cfqueryparam value="#form.LastName#" cfsqltype="cf_sql_varchar" />,
               Email = <cfqueryparam value="#form.Email#" cfsqltype="cf_sql_varchar" />
        WHERE UserID = <cfqueryparam value="#form.UserID#" cfsqltype="cf_sql_integer" />
    </cfquery>

    <cflocation url="UserList.cfm" addtoken="false" />

</cfif>

<cfquery name="qUser">
    SELECT *
    FROM tUsers
    WHERE UserID = <cfqueryparam value="#url.UserID#" cfsqltype="cf_sql_integer" />
</cfquery>

<cf_HeaderAndFooter>
    <cfoutput>
    <h1>User Details</h1>

    <form name="frmUser" id="frmUser" method="post" action="UserDetail.cfm">
        <input type="hidden" name="UserID" value="#qUser.UserID#" />

        <div class="form-group">
            <label for="FirstName">First Name</label>
            <input type="text" class="form-control" name="FirstName" value="#qUser.FirstName#" />
        </div>

        <div class="form-group">
            <label for="LastName">Last Name</label>
            <input type="text" class="form-control" name="LastName" value="#qUser.LastName#" />
        </div>

        <div class="form-group">
            <label for="Email">Email</label>
            <input type="text" class="form-control" name="Email" value="#qUser.Email#" />
        </div>

        <button type="submit" name="btnSubmit" class="btn btn-primary">Submit</button>
    </form>

    </cfoutput>
</cf_HeaderAndFooter>
