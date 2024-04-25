<cfoutput>
    <h1>Order List</h1>

    <table class="table">
        <thead>
            <tr>
                <th>Order ID</th>
                <th>Order Date</th>
                <th>Customer Name</th>
                <th>Price</th>
            </tr>
        </thead>
        <tbody>
            <cfloop query="rc.qOrders">
                <tr>
                    <td>
                        <a href="#buildURL( 'order.detail' )#?OrderID=#rc.qOrders.OrderID#">#rc.qOrders.OrderID#</a>
                    </td>
                    <td>#rc.qOrders.OrderDate#</td>
                    <td>#rc.qOrders.CustomerName#</td>
                    <td>#rc.qOrders.Price#</td>
                </tr>
            </cfloop>
        </tbody>
    </table>

</cfoutput>

