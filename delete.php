<?php
require_once 'config/database.php';

$id = $_GET['id'];

$stmt = $pdo->prepare("DELETE FROM barang WHERE id = ?");
$stmt->execute([$id]);

header('Location: index.php?deleted=1');
exit;
?>
