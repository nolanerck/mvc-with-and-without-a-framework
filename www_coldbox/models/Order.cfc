component
{
    public Order function init()
    {
        return this;
    }

    public query function getAllOrders()
    {
        var _sql = "SELECT OrderID, CustomerName, Price, OrderDate FROM tOrders";
        var rslt = queryExecute( sql=_sql );

        return rslt;
    }

    public any function getOrderDetails( orderID )
    {
        var _sql = "SELECT OrderID, CustomerName, Price, OrderDate FROM tOrders WHERE orderID = :orderID";

        var rslt = queryExecute( _sql, 
                                {
                                    OrderID = { value = arguments.orderID, cfsqltype = 'cf_sql_integer' } 
                                } 
                  );

        return rslt;
    }

    public any function saveOrder( orderID, OrderDate, CustomerName, Price )
    {
        var _sql = "UPDATE tOrders 
                    SET OrderDate = :OrderDate,
                        CustomerName = :CustomerName,
                        Price = :Price
                    WHERE OrderID = :OrderID
                    ";
    
        var _params = {
            OrderID = { value = arguments.OrderID, cfsqltype="cf_sql_integer" },
            OrderDate = { value = arguments.OrderDate, cfsqltype="cf_sql_date" },
            CustomerName = { value = arguments.CustomerName, cfsqltype="cf_sql_varchar" },
            Price = { value = arguments.Price, cfsqltype="cf_sql_numeric" }
        };
    
        queryExecute( _sql, _params );

        return true;
    }

}
