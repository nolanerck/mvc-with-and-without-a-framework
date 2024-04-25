<cfoutput>
    <h1>Order Details</h1>

    <form name="frmOrder" id="frmOrder" method="post" action="#buildURL( 'order.updateOrder' )#">
        <input type="hidden" name="OrderID" value="#rc.qOrder.OrderID#" />

        <div class="form-group">
            <label for="OrderDate">Order Date</label>
            <input type="date" class="form-control" name="OrderDate" value="#rc.qOrder.OrderDate#" />
        </div>

        <div class="form-group">
            <label for="CustomerName">Customer Name</label>
            <input type="text" class="form-control" name="CustomerName" value="#rc.qOrder.CustomerName#" />
        </div>

        <div class="form-group">
            <label for="Price">Price</label>
            <input type="text" class="form-control" name="Price" value="#rc.qOrder.Price#" />
        </div>

        <button type="submit" name="btnSubmit" class="btn btn-primary">Submit</button>
    </form>

</cfoutput>
