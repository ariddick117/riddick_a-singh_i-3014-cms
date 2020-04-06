<?php
function createUser($fname, $username, $password, $email){
    $pdo = Database::getInstance()->getConnection();

    
    $create_user_query = 'INSERT INTO tbl_user (user_id, user_fname, user_name, user_pass, user_email, user_date) VALUES (NULL, :fname, :username, :password, :email, NULL);';
    $create_user_set = $pdo->prepare($create_user_query);
            $create_user_set->execute(
                array(
                    ':fname'=>$fname,
                    ':username'=>$username,
                    ':password'=>$password,
                    ':email'=>$email
                )
            );

            if($create_user_set){
                redirect_to('index.php');
            }else{
                return 'The user did not get through';
            }
}

function getSingleUser($id){
    $pdo = Database::getInstance()->getConnection();
    $show_user_query = 'SELECT * FROM tbl_user WHERE user_id = :id';
    $show_user_set = $pdo->prepare($show_user_query);
            $get_user_result = $show_user_set->execute(
                array(
                    ':id'=>$id
                )
            );

            if($get_user_result){
                return $show_user_set;
            }else{
                return 'not working :(';
            }
}

function getAllusers(){
    $pdo = Database::getinstance()->getConnection();

    $get_user_query = 'SELECT * FROM tbl_user';
    $users = $pdo->query($get_user_query);

    if($users){
        return $users;
    } else {
        return false;
    }
}

function editUser($id, $fname, $username, $password, $email){
    $pdo = Database::getInstance()->getConnection();
    $update_user_query = 'UPDATE tbl_user SET user_fname = :fname, user_name = :username, user_pass = :password, user_email = :email WHERE user_id = :id';
    $update_user_set = $pdo->prepare($update_user_query);
            $get_update_result = $update_user_set->execute(
                array(
                    ':id'=>$id,
                    ':fname'=>$fname,
                    ':username'=>$username,
                    ':password'=>$password,
                    ':email'=>$email
                )
            );

            if($get_update_result){
                redirect_to('index.php');
            }else{
                return 'not working :(';
            }
}

function deleteUser($id){
    $pdo = Database::getInstance()->getConnection();
    $delete_user_query = 'DELETE FROM tbl_user WHERE tbl_user.user_id = :id;';
    $delete_user_set = $pdo->prepare($delete_user_query);
            $get_delete_result = $delete_user_set->execute(
                array(
                    ':id'=>$id
                )
            );
     
            if($get_delete_result && $delete_user_set->rowCount() > 0){
                redirect_to('admin_deleteuser.php');
            }else{
                return false;
            }
}