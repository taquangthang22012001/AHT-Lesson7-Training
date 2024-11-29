
<!-- Form thêm loại sách -->
<form action="categories.php" method="POST">
    <input type="text" name="code" placeholder="Code" required>
    <input type="text" name="category_name" placeholder="Category Name" required>
    <button type="submit" name="add_category">Add Category</button>
</form>

<?php
// Thêm loại sách mới
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['add_category'])) {
    $category_id = $_POST['category_id'];
    $category_name = $_POST['category_name'];
    
    addCategory($pdo, $category_id, $category_name);
    header("Location: categories.php");
}