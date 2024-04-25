component extends="framework.one" 
{
	variables.dbPath = expandPath( "/Derby" );

	this.name 			   = "fw1_demo_app";
	this.sessionManagement = true;
	this.sessionTimeout    = createTimeSpan( 0, 8, 0, 0 );
	this.datasource        = "fw1_dsn";

	this.datasources = {
        fw1_dsn = {
            url = "jdbc:derby:#variables.dbPath#;create=true;MaxPooledStatements=300", 
            driver = "Apache Derby Embedded"
        }
	};	

	variables.framework = 
	{
		home = "main.default",
		defaultsection = "main",
		defaultitem = "default",
		generateSES = true,
		error = "error.default",
		trace = false,
		reload = "reinit",		
		reloadApplicationOnEveryRequest = true
	}

	public boolean function setupApplication()
	{
		return true;
	}


	// function onRequest(targetPage) {
	function setupRequest() 
	{	
		if( isDefined( "url.buildDB" ) )
		{
            include "../dbsetup/buildDB.cfm";
		}

        // include arguments.targetPage;

		// // super.onRequest(targetPage);
		// return true;
	}

}
