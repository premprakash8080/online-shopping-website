<?php
session_start();
include_once 'includes/config.php';
$oid = intval($_GET['oid']);
?>
<script language="javascript" type="text/javascript">
function f2() {
    window.close();
}
ser

function f3() {
    window.print();
}
</script>
<!DOCTYPE html
    PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
    <title>Order Tracking Details</title>
    <link href="style.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/main.css">
</head>

<body>

    <div style="margin-left:50px;">
        <form name="updateticket" id="updateticket" method="post">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">

                <tr height="50">
                    <td colspan="2" class="fontkink2" style="padding-left:0px;">
                        <div class="fontpink2"> <b>Order Tracking Details !</b></div>
                    </td>

                </tr>
                <tr height="30">
                    <td class="fontkink1"><b>order Id:</b></td>
                    <td class="fontkink"><?php echo $oid; ?></td>
                </tr>
                <?php
        $ret = mysqli_query($con, "SELECT * FROM ordertrackhistory WHERE orderId='$oid'");
        $num = mysqli_num_rows($ret);
        if ($num > 0) {
          while ($row = mysqli_fetch_array($ret)) {
        ?>



                <tr height="20">
                    <td class="fontkink1"><b>At Date:</b></td>
                    <td class="fontkink"><?php echo $row['postingDate']; ?></td>
                </tr>
                <tr height="20">
                    <td class="fontkink1"><b>Status:</b></td>
                    <td class="fontkink"><?php echo $row['status']; ?></td>
                </tr>
                <tr height="20">
                    <td class="fontkink1"><b>Remark:</b></td>
                    <td class="fontkink"><?php echo $row['remark']; ?></td>
                </tr>


                <tr>
                    <td colspan="2">
                        <hr />
                    </td>
                </tr>
                <?php }
        } else {
          ?>
                <tr>
                    <td colspan="2">Order Not Process Yet</td>
                </tr>
                <?php  }
        $st = 'Delivered';
        $rt = mysqli_query($con, "SELECT * FROM orders WHERE id='$oid'");
        while ($num = mysqli_fetch_array($rt)) {
          $currrentSt = $num['orderStatus'];
        }
        if ($st == $currrentSt) { ?>
                <tr>
                    <td colspan="2"><b>
                            Product Delivered successfully </b></td>
                    <?php }

          ?>
            </table>
        </form>


        <h2 style="padding-left: 160px;"> Invoice Details </h2>

        <div class="col-md-12 col-sm-12 shopping-cart-table ">
            <div class="table-responsive">
                <form name="cart" method="post">
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th class="cart-romove item">#</th>
                                <th class="cart-description item">Image</th>
                                <th class="cart-product-name item">Product Name</th>

                                <th class="cart-qty item">Quantity</th>
                                <th class="cart-sub-total item">Price Per unit</th>
                                <th class="cart-sub-total item">Shipping Charge</th>
                                <th class="cart-total item">Grandtotal</th>
                                <th class="cart-total item">Payment Method</th>
                                <th class="cart-description item">Order Date</th>

                            </tr>
                        </thead><!-- /thead -->

                        <tbody>

                            <?php $query = mysqli_query($con, "select products.productImage1 as pimg1,products.productName as pname,products.id as proid,orders.productId as opid,orders.quantity as qty,products.productPrice as pprice,products.shippingCharge as shippingcharge,orders.paymentMethod as paym,orders.orderDate as odate,orders.id as orderid from orders join products on orders.productId=products.id where orders.id='" . $oid . "' and orders.paymentMethod is not null");
              $cnt = 1;
              while ($row = mysqli_fetch_array($query)) {
              ?>
                            <tr>
                                <td><?php echo $cnt; ?></td>
                                <td class="cart-image">
                                    <a class="entry-thumbnail" href="detail.html">
                                        <img src="admin/productimages/<?php echo $row['proid']; ?>/<?php echo $row['pimg1']; ?>"
                                            alt="" width="84" height="146">
                                    </a>
                                </td>
                                <td class="cart-product-name-info">
                                    <h4 class='cart-product-description'><a
                                            href="product-details.php?pid=<?php echo $row['opid']; ?>">
                                            <?php echo $row['pname']; ?></a></h4>


                                </td>
                                <td class="cart-product-quantity">
                                    <?php echo $qty = $row['qty']; ?>
                                </td>
                                <td class="cart-product-sub-total"><?php echo $price = $row['pprice']; ?> </td>
                                <td class="cart-product-sub-total"><?php echo $shippcharge = $row['shippingcharge']; ?>
                                </td>
                                <td class="cart-product-grand-total"><?php echo (($qty * $price) + $shippcharge); ?>
                                </td>
                                <td class="cart-product-sub-total"><?php echo $row['paym']; ?> </td>
                                <td class="cart-product-sub-total"><?php echo $row['odate']; ?> </td>


                            </tr>
                            <?php $cnt = $cnt + 1;
              } ?>

                        </tbody><!-- /tbody -->
                    </table><!-- /table -->
            </div>
        </div>
    </div>


    </div>

</body>

</html>