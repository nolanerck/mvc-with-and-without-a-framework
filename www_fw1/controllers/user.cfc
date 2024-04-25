component
{	
	public any function init( fw ) 
	{
		variables.fw = fw;
		return this;
	}

	public void function list( rc ) 
	{
		rc.qUsers = new model.User().getAllUsers();
	}

	public void function detail( rc ) 
	{
		rc.qUser = new model.User().getUserDetails( rc.UserID );
	}	

	public void function saveUser( rc )
	{
		new model.User().saveUser( rc.UserID, rc.FirstName, rc.LastName, rc.Email );

		fw.redirect( action="user.list" );
	}
}

