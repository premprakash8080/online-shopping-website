<?php

if (isset($_Get['action'])) {
    if (!empty($_SESSION['cart'])) {
        foreach ($_POST['quantity'] as $key => $val) {
            if ($val == 0) {
                unset($_SESSION['cart'][$key]);
            } else {
                $_SESSION['cart'][$key]['quantity'] = $val;
            }
        }
    }
}
?>

<div class="header-nav animate-dropdown">
    <div class="container">
        <div class="yamm navbar navbar-default" role="navigation">
            <div class="navbar-header">
                <button data-target="#mc-horizontal-menu-collapse" data-toggle="collapse" class="navbar-toggle collapsed" type="button">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <div class="nav-bg-class">
                <div class="navbar-collapse collapse" id="mc-horizontal-menu-collapse">
                    <div class="nav-outer">

                        <ul class="nav navbar-nav">
                            <li>
                                <div class="logo">
                                    <a href="index.php">

                                        <h2>Shopizer </h2>

                                    </a>
                                </div>
                            </li>

                            <li class="active dropdown yamm-fw">
                                <a href="index.php" data-hover="dropdown" class="dropdown-toggle">Home</a>

                            </li>
                            <?php $sql = mysqli_query($con, "select id,categoryName  from category limit 6");
                            while ($row = mysqli_fetch_array($sql)) {
                            ?>

                                <li class="dropdown yamm">
                                    <a href="category.php?cid=<?php echo $row['id']; ?>"> <?php echo $row['categoryName']; ?></a>

                                </li>
                            <?php } ?>

                            <li class="dropdown">
                                <div class="main-header">
                                    <!-- <div class="container"> -->
                                    <!-- <div class="row"> -->
                                    <div class="  top-search-holder">
                                        <div class="search-area">
                                            <form name="search" method="post" action="search-result.php">
                                                <div class="control-group">

                                                    <!-- <input class="search-field" placeholder="Search here..." name="product" required="required" /> -->
                                                    <!-- <button class="search-button" type="submit" name="search"></button> -->

                                                    <label for="search">Search</label>
                                                    <input id="search" type="search" pattern=".*\S.*" required>
                                                    <span class="caret"></span>


                                                </div>
                                            </form>
                                        </div><!-- /.search-area -->
                                        <!-- ============================================================= SEARCH AREA : END ============================================================= -->
                                    </div><!-- /.top-search-holder -->
                                    <!-- </div> -->
                                    <!-- </div> -->
                                </div>
                            </li>


                            <li>


                                <div class="dropdown yamm">
                                    <button class="dropbtn">Profile</button>
                                    <div class="dropdown-content">
                                        <ul class="list-unstyled">

                                            <?php if (strlen($_SESSION['login'])) {   ?>
                                                <li><a href="#"><i class="icon fa fa-user"></i>Welcome -<?php echo htmlentities($_SESSION['username']); ?></a></li>
                                            <?php } ?>

                                            <li><a href="my-account.php"><i class="icon fa fa-user"></i>My Account</a></li>
                                            <li><a href="my-wishlist.php"><i class="icon fa fa-heart"></i>Wishlist</a></li>
                                            <li><a href="my-cart.php"><i class="icon fa fa-shopping-cart"></i>My Cart</a></li>
                                            <?php if (strlen($_SESSION['login']) == 0) {   ?>
                                                <li><a href="login.php"><i class="icon fa fa-sign-in"></i>Login</a></li>
                                            <?php } else { ?>

                                                <li><a href="logout.php"><i class="icon fa fa-sign-out"></i>Logout</a></li>
                                            <?php } ?>
                                        </ul>
                                        <a href="track-orders.php" class="dropdown-toggle"><span class="key">Track Order</b></a>
                                    </div>
                                </div>

                            </li>
                            <li>

                                <div class=" animate-dropdown top-cart-row">
                                    <!-- ============================================================= SHOPPING CART DROPDOWN ============================================================= -->
                                    <?php
                                    if (!empty($_SESSION['cart'])) {
                                    ?>
                                        <div class="dropdown dropdown-cart">
                                            <a href="#" class="dropdown-toggle lnk-cart" data-toggle="dropdown">
                                                <div class="items-cart-inner">
                                                    <div class="total-price-basket">
                                                        <span class="lbl">cart -</span>
                                                        <span class="total-price">
                                                            <span class="sign">Rs.</span>
                                                            <span class="value"><?php echo $_SESSION['tp']; ?></span>
                                                        </span>
                                                    </div>
                                                    <div class="basket">
                                                        <i class="glyphicon glyphicon-shopping-cart"></i>
                                                    </div>
                                                    <div class="basket-item-count"><span class="count"><?php echo $_SESSION['qnty']; ?></span></div>

                                                </div>
                                            </a>
                                            <ul class="dropdown-menu">

                                                <?php
                                                $sql = "SELECT * FROM products WHERE id IN(";
                                                foreach ($_SESSION['cart'] as $id => $value) {
                                                    $sql .= $id . ",";
                                                }
                                                $sql = substr($sql, 0, -1) . ") ORDER BY id ASC";
                                                $query = mysqli_query($con, $sql);
                                                $totalprice = 0;
                                                $totalqunty = 0;
                                                if (!empty($query)) {
                                                    while ($row = mysqli_fetch_array($query)) {
                                                        $quantity = $_SESSION['cart'][$row['id']]['quantity'];
                                                        $subtotal = $_SESSION['cart'][$row['id']]['quantity'] * $row['productPrice'] + $row['shippingCharge'];
                                                        $totalprice += $subtotal;
                                                        $_SESSION['qnty'] = $totalqunty += $quantity;

                                                ?>


                                                        <li>
                                                            <div class="cart-item product-summary">
                                                                <div class="row">
                                                                    <div class="col-xs-4">
                                                                        <div class="image">
                                                                            <a href="product-details.php?pid=<?php echo $row['id']; ?>"><img src="admin/productimages/<?php echo $row['id']; ?>/<?php echo $row['productImage1']; ?>" width="35" height="50" alt=""></a>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-xs-7">

                                                                        <h3 class="name"><a href="product-details.php?pid=<?php echo $row['id']; ?>"><?php echo $row['productName']; ?></a></h3>
                                                                        <div class="price">Rs.<?php echo ($row['productPrice'] + $row['shippingCharge']); ?>*<?php echo $_SESSION['cart'][$row['id']]['quantity']; ?></div>
                                                                    </div>

                                                                </div>
                                                            </div><!-- /.cart-item -->

                                                    <?php }
                                                } ?>
                                                    <div class="clearfix"></div>
                                                    <hr>

                                                    <div class="clearfix cart-total">
                                                        <div class="pull-right">

                                                            <span class="text">Total :</span><span class='price'>Rs.<?php echo $_SESSION['tp'] = "$totalprice" . ".00"; ?></span>

                                                        </div>

                                                        <div class="clearfix"></div>

                                                        <a href="my-cart.php" class="btn btn-upper btn-primary btn-block m-t-20">My Cart</a>
                                                    </div><!-- /.cart-total-->


                                                        </li>
                                            </ul><!-- /.dropdown-menu-->
                                        </div><!-- /.dropdown-cart -->
                                    <?php } else { ?>
                                        <div class="dropdown dropdown-cart">
                                            <a href="#" class="dropdown-toggle lnk-cart" data-toggle="dropdown">
                                                <div class="items-cart-inner">
                                                    <div class="total-price-basket">
                                                        <span class="lbl">cart -</span>
                                                        <span class="total-price">
                                                            <span class="sign">Rs.</span>
                                                            <span class="value">00.00</span>
                                                        </span>
                                                    </div>
                                                    <div class="basket">
                                                        <i class="glyphicon glyphicon-shopping-cart"></i>
                                                    </div>
                                                    <div class="basket-item-count"><span class="count">0</span></div>

                                                </div>
                                            </a>
                                            <ul class="dropdown-menu">




                                                <li>
                                                    <div class="cart-item product-summary">
                                                        <div class="row">
                                                            <div class="col-xs-12">
                                                                Your Shopping Cart is Empty.
                                                            </div>


                                                        </div>
                                                    </div><!-- /.cart-item -->


                                                    <hr>

                                                    <div class="clearfix cart-total">

                                                        <div class="clearfix"></div>

                                                        <a href="index.php" class="btn btn-upper btn-primary btn-block m-t-20">Continue Shooping</a>
                                                    </div><!-- /.cart-total-->


                                                </li>
                                            </ul><!-- /.dropdown-menu-->
                                        </div>
                                    <?php } ?>




                                    <!-- ============================================================= SHOPPING CART DROPDOWN : END============================================================= -->
                                </div><!-- /.top-cart-row -->
                            </li>



                        </ul><!-- /.navbar-nav -->





                        <div class="clearfix">


                        </div>

                    </div>
                </div>


            </div>
        </div>
    </div>
</div>



