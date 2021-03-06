<?php
require_once 'load.php';

if (isset($_GET['id'])) {
    $id = $_GET['id'];
    $tbl = 'tbl_products';
    $col = 'product_id';
    $getProduct = getSingleProduct($tbl, $col, $id);
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <title>Details</title>

    <link rel="stylesheet" type="text/css" href="css/main.css">
</head>
<body>
    <?php include 'templates/header.php';?>
    <?php if (!is_string($getProduct)): ?>
        <?php while ($row = $getProduct->fetch(PDO::FETCH_ASSOC)): ?>
            <img src="images/<?php echo $row['product_image']; ?>" alt="<?php echo $row['product_name'] ?>"/>
            <h2>Name: <?php echo $row['product_name']; ?></h2>
            <h4>Year: <?php echo $row['product_price']; ?></h4>
            <p>Description:<br> <?php echo $row['product_description']; ?></p>

            <a href="index.php">Back to Home</a>
        <?php endwhile;?>
    <?php endif;?>

    <?php include 'templates/footer.php';?>
</body>
</html>