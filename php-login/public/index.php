<?php

require_once __DIR__ . '/../includes/auth.php';

if (isUserLoggedIn()) {
    redirect('dashboard.php');
}

redirect('login.php');
