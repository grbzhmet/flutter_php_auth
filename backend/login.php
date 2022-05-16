<?php 

try{
    $db = new PDO("mysql:host=localhost;dbname='db_name'", "'db_user'", "'db_pass'");
    $db->exec("SET NAMES utf8");
    $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

} catch ( PDOException $e ){
    echo "Failed: ".$e->getMessage();
}


    $data = array();

    $username = $_POST['username'];
    $password = $_POST['password'];
    
    $md5password = md5($password);

    $dogrula = $db->prepare("SELECT * FROM users WHERE user_email=? AND user_password=? ");
    $dogrula->Execute([$username, $md5password]);
    $girisyap = $dogrula->fetch();
    
        
    if (@$girisyap) {
        $data['msg'] = "Success";
        $data['user_id'] = $girisyap['user_id'];
        echo json_encode($data);
    } else {
         $data['msg'] = "error";
        echo json_encode($data);
    }
?>