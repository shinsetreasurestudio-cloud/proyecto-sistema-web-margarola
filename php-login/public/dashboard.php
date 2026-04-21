<?php

require_once __DIR__ . '/../includes/auth.php';

// Only logged-in users should be able to view this page.
requireLogin();

$userName = $_SESSION['user_name'] ?? 'User';
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <link rel="stylesheet" href="../assets/style.css">
</head>
<body>
    <main class="page">
        <section class="card">
            <h1>Dashboard</h1>
            <p class="welcome">Welcome, <?php echo escape($userName); ?></p>
            <p class="intro">You are now logged in with a session-based PHP login system.</p>
            <a href="logout.php" class="button button-link">Log Out</a>
        </section>
    </main>
</body>
</html>
