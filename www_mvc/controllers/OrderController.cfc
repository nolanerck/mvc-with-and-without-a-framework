component
{
    remote any function updateOrder( OrderID, OrderDate, CustomerName, Price )
    {
        var objOrder = new model.Order();

        objOrder.saveOrder( arguments.orderID, arguments.OrderDate, arguments.CustomerName, arguments.Price );

        cflocation( url="../OrderList.cfm", addtoken="false" );
    }
}