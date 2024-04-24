<cfset qOrder = new model.Order().getOrderDetails( url.orderID ) />

<cf_HeaderAndFooter>
    <cfoutput>
    <h1>Order Details</h1>

    <form name="frmOrder" id="frmOrder" method="post" action="./controllers/OrderController.cfc?method=updateOrder">
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
