<?php
use MongoDB\Driver\Query;

class DB
{
    public function __construct()
    {
        $host = 'localhost';
        $port = '3306';
        $name = 'dashboard';
        $user = 'root';
        $pass = 'root';
        try {
            $this->db = new PDO(
                'mysql:' .
                'host=' . $host . ';' .
                'port=' . $port . ';' .
                'dbname=' . $name,
                $user,
                $pass
                );
        }
        catch (Exception $e) {
            print_r($e->getMessage());
            die();
        }
    }

    public function __destruct()
    {
        $this->db = null;
    }

    public function login($login, $password)
    {
        $user = $this->getUser($login);
        if($user) if($user->password == $password) {
            return array(
                'name' => $user->name,
                'group' => $user->group_id
            );
        }
    }

    public function getGroupById($id)
    {
        $query = "SELECT * FROM groups WHERE id=$id";
        return $this->db->query($query)->fetchObject();
    }

    public function getTimeTable($group_id)
    {
        $query = "SELECT * FROM `timetable` WHERE group_id=$group_id";
        $data = $this->db->query($query)
        ->fetchAll(PDO::FETCH_ASSOC);   
        $group = $this->getGroupById($group_id);
        return array(
            'group_name' => $group->group_name,
            'lessons' => $data
        );
        return $data;
    }

    public function gerenerateDay($day, $lesson, $group_id, $top, $down){
        $query = "INSERT INTO `timetable`(`day`, `group_id`, `top`, `down`, `lesson`) VALUES ($day, $group_id, '$top', '$down', $lesson)";
        print_r($query);
        $this->db->query($query);
    }

    public function registration($login, $name, $group, $password)
    {
        $user = $this->getUser($login);
        if($user) return;
        $query = "INSERT INTO users (login, password, name, group_id) 
                  VALUES('$login','$password', '$name', '$group')";
        $this->db->query($query);
        return true;
    }
    public function getUser($login) {
        $query = "SELECT * FROM users WHERE login='$login'";
        return $this->db->query($query)->fetchObject();
    }
}