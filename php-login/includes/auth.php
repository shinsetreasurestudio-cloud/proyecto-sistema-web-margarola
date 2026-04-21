<?php

require_once __DIR__ . '/functions.php';

function isUserLoggedIn()
{
    return isset($_SESSION['user_id']);
}

function requireLogin()
{
    if (!isUserLoggedIn()) {
        redirect('login.php');
    }
}

function redirectIfLoggedIn()
{
    if (isUserLoggedIn()) {
        redirect('dashboard.php');
    }
}
