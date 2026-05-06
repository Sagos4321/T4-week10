<?php
require_once 'config/database.php';

$id = $_GET['id'];
$error = '';

// ambil data lama
$stmt = $pdo->prepare("SELECT * FROM barang WHERE id = ?");
$stmt->execute([$id]);
$barang = $stmt->fetch(PDO::FETCH_ASSOC);

if (!$barang) {
    echo "Data tidak ditemukan!";
    exit;
}

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $nama_barang = trim($_POST['nama_barang']);
    $kategori    = trim($_POST['kategori']);
    $jumlah      = $_POST['jumlah'];
    $harga       = $_POST['harga'];
    $lokasi      = trim($_POST['lokasi']);

    if (empty($nama_barang) || empty($kategori) || empty($jumlah) || empty($harga)) {
        $error = 'Semua field wajib diisi!';
    } else {
        $stmt = $pdo->prepare("UPDATE barang SET nama_barang=?, kategori=?, jumlah=?, harga=?, lokasi=? WHERE id=?");
        $stmt->execute([
            htmlspecialchars($nama_barang),
            htmlspecialchars($kategori),
            (int)$jumlah,
            (float)$harga,
            htmlspecialchars($lokasi),
            $id
        ]);
        header('Location: index.php?success=1');
        exit;
    }
}
?>

<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <title>Edit Barang</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-4">
    <h3>Edit Barang</h3>
    <hr>

    <?php if ($error): ?>
        <div class="alert alert-danger"><?= $error ?></div>
    <?php endif; ?>

    <form method="POST">
        <div class="mb-3">
            <label>Nama Barang</label>
            <input type="text" name="nama_barang" class="form-control" value="<?= htmlspecialchars($barang['nama_barang']) ?>">
        </div>
        <div class="mb-3">
            <label>Kategori</label>
            <select name="kategori" class="form-control">
                <option value="">-- Pilih --</option>
                <?php
                $kategoris = ['Elektronik', 'Furnitur', 'Alat Tulis', 'Peralatan', 'Lainnya'];
                foreach ($kategoris as $k) {
                    $selected = $barang['kategori'] == $k ? 'selected' : '';
                    echo "<option value='$k' $selected>$k</option>";
                }
                ?>
            </select>
        </div>
        <div class="mb-3">
            <label>Jumlah</label>
            <input type="number" name="jumlah" class="form-control" value="<?= $barang['jumlah'] ?>">
        </div>
        <div class="mb-3">
            <label>Harga</label>
            <input type="number" name="harga" class="form-control" value="<?= $barang['harga'] ?>">
        </div>
        <div class="mb-3">
            <label>Lokasi</label>
            <input type="text" name="lokasi" class="form-control" value="<?= htmlspecialchars($barang['lokasi']) ?>">
        </div>
        <button type="submit" class="btn btn-warning">Update</button>
        <a href="index.php" class="btn btn-secondary">Batal</a>
    </form>
</div>
</body>
</html>
