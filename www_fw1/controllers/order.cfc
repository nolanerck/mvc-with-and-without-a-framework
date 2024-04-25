component
{	
	public any function init( fw ) 
	{
		variables.fw = fw;
		return this;
	}

	public void function list( rc ) 
	{
		rc.qOrders = new model.Order().getAllOrders();
	}

	public void function detail( rc ) 
	{
		rc.qOrder = new model.Order().getOrderDetails( rc.orderID );
	}

	public void function updateOrder( rc ) 
	{
		new model.Order().saveOrder( rc.orderID, rc.OrderDate, rc.CustomerName, rc.Price );
		fw.redirect( 'order.list' );
	}
}

