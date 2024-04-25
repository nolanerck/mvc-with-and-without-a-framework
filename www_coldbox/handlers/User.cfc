component extends="coldbox.system.EventHandler" {

	/**
	 * Default Action
	 */

	/**
	 * Produce some restfulf data
	 */
	function list( event, rc, prc )
	{
		rc.qUsers = new models.User().getAllUsers();
	}

	// function detail( event, rc, prc )
	// {
	// 	rc.qUser = new models.User().getUserDetails( rc.userID );
	// }

}
