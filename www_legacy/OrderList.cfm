<cfquery name="qOrders">
    SELECT *
    FROM tOrders
</cfquery>

<cf_HeaderAndFooter>
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
            <cfloop query="qOrders">
                <tr>
                    <td>
                        <a href="OrderDetail.cfm?OrderID=#qOrders.OrderID#">#qOrders.OrderID#</a>
                    </td>
                    <td>#qOrders.OrderDate#</td>
                    <td>#qOrders.CustomerName#</td>
                    <td>#qOrders.Price#</td>
                </tr>
            </cfloop>
        </tbody>
    </table>

    </cfoutput>
</cf_HeaderAndFooter>
