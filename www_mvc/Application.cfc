component
{
    variables.dbPath = expandPath( "/Derby" );

    this.name = "mvc_pattern_cfml_app";
    
	this.applicationTimeout = createTimeSpan(0,2,0,0); //2h
	this.sessionManagement = true;
	this.sessionTimeout = createTimeSpan(0,0,45,0); //45 min
	this.datasource = "mvc_dsn";    

	this.datasources = {
        mvc_dsn = {
            url = "jdbc:derby:#variables.dbPath#;create=true;MaxPooledStatements=300", 
            driver = "Apache Derby Embedded"
        }
	};

	public void function onRequest( required string targetPage ) 
	{ 
		if( isDefined( "url.buildDB" ) )
		{
            include "../dbsetup/buildDB.cfm";
		}

        include arguments.targetPage;
    }

}

