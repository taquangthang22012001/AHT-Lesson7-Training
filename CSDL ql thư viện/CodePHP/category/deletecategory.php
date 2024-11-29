
<?php
// Xóa loại sách
if (isset($_GET['delete_id'])) {
    $id = $_GET['delete_id'];
    deleteCategory($pdo, $id);
    header("Location: categories.php");
}