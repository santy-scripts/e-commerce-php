<?php
ini_set('display_errors', 1);
error_reporting(E_ALL);

echo "1. Iniciando test...<br>";

try {
    $pdo = new PDO(
        "mysql:host=localhost;dbname=paurob860_ecommerce", 
        "paurob860_ecommerce", 
        "pzE62BfU7$"
    );
    echo "2. ✅ Conexión a BD exitosa<br>";

    // Test simple sin alias
    $stmt = $pdo->query("SELECT COUNT(*) FROM products");
    $total = $stmt->fetchColumn();
    echo "3. ✅ Total productos: " . $total . "<br>";

    // Test de estructura de tabla
    $stmt2 = $pdo->query("SHOW TABLES");
    $tables = $stmt2->fetchAll(PDO::FETCH_COLUMN);
    echo "4. ✅ Tablas disponibles: " . implode(", ", $tables) . "<br>";

    // Test de primer producto
    $stmt3 = $pdo->query("SELECT * FROM products LIMIT 1");
    $product = $stmt3->fetch(PDO::FETCH_ASSOC);
    echo "5. ✅ Primer producto: " . print_r($product, true) . "<br>";

} catch(Exception $e) {
    echo "❌ ERROR: " . $e->getMessage() . "<br>";
}
?>