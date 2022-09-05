<?php
    header('Access-Control-Allow-Origin: *');
    header("Content-type: application/json; charset=utf-8");
    
    error_reporting(-1);
    require_once('Application.php');
    
    function router($params){
        $method = $params['method'];
        if($method){
            $app = new Application();
            switch($method){
                case 'login': return $app->login($params);
                case 'registration': return $app->registration($params);
                case 'getTimeTable': return $app->getTimeTable($params);
                //case 'gerenerateDay': return $app->gerenerateDay($params);
            }
            return false;
        }
    }

    function answer($data){
        if($data){
            return array(
                'status' => true,
                'data' => $data
            );
        } else {
            return array('status' => false);
        }
    }
    
    echo json_encode(answer(router(array_merge($_GET,$_POST))));