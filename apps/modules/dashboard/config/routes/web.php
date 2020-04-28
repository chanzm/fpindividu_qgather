<?php

$namespace =  'Phalcon\Init\Dashboard\Controllers\Web';

$router->addGet('/register', [
    'namespace' => $namespace,
    'module' => 'dashboard',
    'controller' => 'User',
    'action' => 'register'
]);

//kalo store brati addpost
$router->addPost('/register', [
    'namespace' => $namespace,
    'module' => 'dashboard',
    'controller' => 'User',
    'action' => 'storeregister'
]);

$router->addGet('/dashboard', [
    'namespace' => $namespace,
    'module' => 'dashboard',
    'controller' => 'Dashboard',
    'action' => 'dashboard'
]);

$router->addGet('/dashboardadm', [
    'namespace' => $namespace,
    'module' => 'dashboard',
    'controller' => 'Dashboard',
    'action' => 'dashboardadmin'
]);

$router->addGet('/login', [
    'namespace' => $namespace,
    'module' => 'dashboard',
    'controller' => 'Admin',
    'action' => 'login'
]);

//kalo store brati addpost
$router->addPost('/login', [
    'namespace' => $namespace,
    'module' => 'dashboard',
    'controller' => 'Admin',
    'action' => 'storelogin'
]);

$router->addGet('/logout', [
    'namespace' => $namespace,
    'module' => 'dashboard',
    'controller' => 'Admin',
    'action' => 'logout'
]
);

$router->addGet('/mintarekom/{id}', [
    'namespace' => $namespace,
    'module' => 'dashboard',
    'controller' => 'Tempat',
    'action' => 'ajukanrekom'
]);

//kalo store brati addpost
$router->addPost('/mintarekom/{id}', [
    'namespace' => $namespace,
    'module' => 'dashboard',
    'controller' => 'Tempat',
    'action' => 'storepengajuan'
]);

$router->addGet('/rekomadm/{id}', [
    'namespace' => $namespace,
    'module' => 'dashboard',
    'controller' => 'Tempat',
    'action' => 'addplaceadmin'
]);

//kalo store brati addpost
$router->addPost('/rekomadm/{id}', [
    'namespace' => $namespace,
    'module' => 'dashboard',
    'controller' => 'Tempat',
    'action' => 'storeplaceadmin'
]);

$router->addGet('/dashboard/adm/listusr', [
    'namespace' => $namespace,
    'module' => 'dashboard',
    'controller' => 'Admin',
    'action' => 'listuser'
]
);

$router->addGet('/dashboard/adm/listusr/verifuser/{id}',[
    'namespace' => $namespace,
    'module' => 'dashboard',
    'controller' => 'Admin',
    'action' => 'verifuser'
]
); 

$router->addGet('/dashboard/adm/request', [
    'namespace' => $namespace,
    'module' => 'dashboard',
    'controller' => 'Admin',
    'action' => 'listpermintaan'
]
);

$router->addGet('/dashboard/adm/lisreq/verifreq/{id}',[
    'namespace' => $namespace,
    'module' => 'dashboard',
    'controller' => 'Admin',
    'action' => 'verifrequ'
]
); 

$router->addGet('/dashboard/cek/{id}',[
    'namespace' => $namespace,
    'module' => 'dashboard',
    'controller' => 'Tempat',
    'action' => 'awal'
]
); 
$router->addGet('/dashboard/cekadmin/{id}',[
    'namespace' => $namespace,
    'module' => 'dashboard',
    'controller' => 'Tempat',
    'action' => 'awaladmin'
]
); 

$router->addGet('/detail/{id}',[
    'namespace' => $namespace,
    'module' => 'dashboard',
    'controller' => 'Tempat',
    'action' => 'todetail'
]
); 

$router->addGet('/detailadmin/{id}',[
    'namespace' => $namespace,
    'module' => 'dashboard',
    'controller' => 'Tempat',
    'action' => 'todetailadmin'
]
); 

$router->addPost('/review', [
    'namespace' => $namespace,
    'module' => 'dashboard',
    'controller' => 'Review',
    'action' => 'storereview'
]);

$router->addPost('/sudahrev', [
    'namespace' => $namespace,
    'module' => 'dashboard',
    'controller' => 'Review',
    'action' => 'review'
]);

$router->addGet('/revdone/{id}', [
    'namespace' => $namespace,
    'module' => 'dashboard',
    'controller' => 'Review',
    'action' => 'revdone'
]);
$router->addGet('/hapusreview/{id}', [
    'namespace' => $namespace,
    'module' => 'dashboard',
    'controller' => 'Review',
    'action' => 'hapusrev'
]);
$router->addGet('/hapusreviewadmin/{id}', [
    'namespace' => $namespace,
    'module' => 'dashboard',
    'controller' => 'Review',
    'action' => 'hapusrevadmin'
]);
$router->addGet('/hapusplace/{id}', [
    'namespace' => $namespace,
    'module' => 'dashboard',
    'controller' => 'Tempat',
    'action' => 'hapusplace'
]);
$router->addGet('/editplace/{id}', [
    'namespace' => $namespace,
    'module' => 'dashboard',
    'controller' => 'Tempat',
    'action' => 'editplace'
]);
$router->addPost('/storeeditplace', [
    'namespace' => $namespace,
    'module' => 'dashboard',
    'controller' => 'Tempat',
    'action' => 'storeeditplace'
]);

$router->addGet('/dashboard/adm/tambahpengajuan/{id}', [
    'namespace' => $namespace,
    'module' => 'dashboard',
    'controller' => 'Requesttempat',
    'action' => 'tambahpengajuan'
]);
$router->addPost('/dashboard/adm/storepengajuan/{id}', [
    'namespace' => $namespace,
    'module' => 'dashboard',
    'controller' => 'Requesttempat',
    'action' => 'storepengajuan'
]);

$router->addGet('/hapuspengajuan/{id}', [
    'namespace' => $namespace,
    'module' => 'dashboard',
    'controller' => 'Requesttempat',
    'action' => 'hapuspengajuan'
]);
// $router->addGet('dashboard',[
//     'namespace' => $namespace,
//     'module' => 'dashboard',
//     'controller' => 'Tempat',
//     'action' => 'seedetail'
// ]
// ); 

// $router->addGet('/add', [
//     'namespace' => $namespace,
//     'module' => 'dashboard',
//     'controller' => 'Dashboard',
//     'action' => 'adduser'
// ]
// );
// $router->addGet('/select', [
//     'namespace' => $namespace,
//     'module' => 'dashboard',
//     'controller' => 'User',
//     'action' => 'select'
// ]);
return $router;