<?php
$rootDir = realpath(__DIR__ . '/../..');
require $rootDir . '/vendor/autoload.php';

$renderer = new \Smarty();
$renderer->template_dir = $rootDir . '/src/templates';
$renderer->compile_dir = $rootDir . '/tmp/cache/templates_c';
$renderer->left_delimiter = '{{';
$renderer->right_delimiter = '}}';

$data = [
    'stringVar' => '文字列の変数です',
];
$renderer->assign($data);
$body = $renderer->fetch('assign.tpl');
echo $body;
