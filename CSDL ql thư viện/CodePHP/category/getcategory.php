<?php
namespace MyNamespace\CodePHP;
require 'config.php';
require 'db_operations.php'; // Chứa các truy vấn database
require 'header.php'; // Header của trang

// Lấy danh sách các loại sách
$categories = getCategories($pdo);
?>
<!-- Hiển thị danh sách loại sách -->
<h2>Categories List</h2>
<table border="1">
    <tr>
        <th>Code</th>
        <th>Category Name</th>
        <th>Actions</th>
    </tr>
    <?php foreach ($categories as $category): ?>
    <tr>
        <td><?php echo htmlspecialchars($category['category_id']); ?></td>
        <td><?php echo htmlspecialchars($category['category_name']); ?></td>
        <td>
            <a href="categories.php?edit_id=<?php echo $category['category_id']; ?>">Update</a> |
            <a href="categories.php?delete_id=<?php echo $category['category_id']; ?>" onclick="return confirm('Are you sure you want to delete?');">Delete</a>
        </td>
    </tr>
    <?php endforeach; ?>
</table>

<?php include 'footer.php'; ?> <!-- Footer của trang -->
