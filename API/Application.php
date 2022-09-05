<?php
require_once 'DB.php';


class Application
{
    public function __construct()
    {
        $db = new DB();
        $this->db = $db;
    }

    public function login($params)
    {
        if ($params['login'] &&
            $params['password']
        ){
            return $this->db->login(
                $params['login'],
                $params['password']
            );
        }
    }

    public function getTimeTable($params)
    {
        if ($params['group_id']){
            return $this->db->getTimeTable($params['group_id']);
        }
    }

    public function gerenerateDay($params)
    {
        if ($params['day'] &&
            $params['lesson'] &&
            $params['group_id'] &&
            $params['top'] &&
            $params['down'] 
        ){
            return $this->db->gerenerateDay(
                $params['day'],
                $params['lesson'],
                $params['group_id'],
                $params['top'],
                $params['down'] 
            );
        }
    }

    public function registration($params)
    {
        if ($params['login'] &&
            $params['name'] &&
            $params['group'] &&
            $params['password']
        ) {
            return $this->db->registration(
                $params['login'],
                $params['name'],
                $params['group'],
                $params['password']
            );
        }
    }

  
}