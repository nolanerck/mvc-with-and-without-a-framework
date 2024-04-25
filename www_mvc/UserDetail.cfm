<cfset qUser = new model.User().getUserDetails( url.UserID ) />

<cf_HeaderAndFooter>
    <cfoutput>
    <h1>User Details</h1>

    <form name="frmUser" id="frmUser" method="post" action="./controllers/UserController.cfc?method=saveUser">
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
