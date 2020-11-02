<style>
td {
        border: 1px solid gray;
        padding: 5px;
}
</style>
<a href="/?file=my-data.php">My data</a>

<div>
    <?php
        $file = $_GET["file"];
        
        if(null == $file)
            $file = 'addresses.php';

        include $file;
    ?>
</div>
