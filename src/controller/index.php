<?php

$it = new RecursiveIteratorIterator(new RecursiveDirectoryIterator(__DIR__));

echo "<ul>\n";

/* @var $finfo SplFileObject */
foreach ($it as $finfo) {
    $filename = basename($finfo->getPathname());
    if ($filename === 'index.php') {
        continue;
    }
    if ($finfo->isFile()) {
        echo sprintf('<li><a href="%s">%s</a></li>', $filename, $filename), "\n";
    }
}

echo "</ul>\n";
