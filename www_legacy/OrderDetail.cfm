<cfif cgi.REQUEST_METHOD eq "post">

    <cfquery name="qUpdateOrder">
        UPDATE tOrders
           SET OrderDate = <cfqueryparam value="#form.OrderDate#" cfsqltype="cf_sql_date" />,
               CustomerName = <cfqueryparam value="#form.CustomerName#" cfsqltype="cf_sql_varchar" />,
               Price = <cfqueryparam value="#form.Price#" cfsqltype="cf_sql_numeric" />
        WHERE OrderID = <cfqueryparam value="#form.OrderID#" cfsqltype="cf_sql_integer" />
    </cfquery>

    <cflocation url="OrderList.cfm" addtoken="false" />    

</cfif>

<cfquery name="qOrder">
    SELECT *
    FROM tOrders
    WHERE OrderID = <cfqueryparam value="#url.OrderID#" cfsqltype="cf_sql_integer" />
</cfquery>

<cf_HeaderAndFooter>
    <cfoutput>
    <h1>Order Details</h1>

    <form name="frmOrder" id="frmOrder" method="post" action="OrderDetail.cfm">
        <input type="hidden" name="OrderID" value="#qOrder.OrderID#" />

        <div class="form-group">
            <label for="OrderDate">Order Date</label>
            <input type="date" class="form-control" name="OrderDate" value="#qOrder.OrderDate#" />
        </div>

        <div class="form-group">
            <label for="CustomerName">Customer Name</label>
            <input type="text" class="form-control" name="CustomerName" value="#qOrder.CustomerName#" />
        </div>

        <div class="form-group">
            <label for="Price">Price</label>
            <input type="text" class="form-control" name="Price" value="#qOrder.Price#" />
        </div>

        <button type="submit" name="btnSubmit" class="btn btn-primary">Submit</button>
    </form>

    </cfoutput>
</cf_HeaderAndFooter>
