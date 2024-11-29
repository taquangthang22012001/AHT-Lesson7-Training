<?php if (isset($category)): ?>
    <h2>Edit Category</h2>
    <form action="categories.php" method="POST">
        <input type="hidden" name="id" value="<?php echo $category['category_id']; ?>">
        <input type="text" name="code" value="<?php echo $category['category_id']; ?>" required>
        <input type="text" name="category_name" value="<?php echo $category['category_name']; ?>" required>
        <button type="submit" name="edit_category">Update Category</button>
    </form>
<?php endif; ?>

<?php
// Sửa loại sách
if (isset($_GET['edit_id'])) {
    $id = $_GET['edit_id'];
    $category = getCategoryById($pdo, $id);
}

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['edit_category'])) {
    $id = $_POST['id'];
    $code = $_POST['category_id'];
    $category_name = $_POST['category_name'];
    
    updateCategory($pdo, $id, $category_name);
    header("Location: categories.php");
}

