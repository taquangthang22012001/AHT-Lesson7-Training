<?php
// require 'categories.php';
// Lấy danh sách loại sách
function getCategories($pdo) {
    $query = "SELECT * FROM category";
    $stmt = $pdo->query($query);
    return $stmt->fetchAll(PDO::FETCH_ASSOC);
}

// Thêm loại sách mới
function addCategory($pdo, $code, $category_name) {
    $stmt = $pdo->prepare("INSERT INTO category (category_id, category_name) VALUES (?, ?)");
    $stmt->execute([$code, $category_name]);
}

// Xóa loại sách
function deleteCategory($pdo, $id) {
    $stmt = $pdo->prepare("DELETE FROM category WHERE category_id = ?");
    $stmt->execute([$id]);
}

// Sửa loại sách
function updateCategory($pdo, $id, $category_name) {
    $stmt = $pdo->prepare("UPDATE category SET category_name = ? WHERE id = ?");
    $stmt->execute([$category_name, $id]);
}

// Lấy một loại sách theo ID
function getCategoryById($pdo, $id) {
    $stmt = $pdo->prepare("SELECT * FROM category WHERE category_id = ?");
    $stmt->execute([$id]);
    return $stmt->fetch(PDO::FETCH_ASSOC);
}
?>
