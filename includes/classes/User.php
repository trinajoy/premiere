<?php

class User
{
    private $con, $sqlData;

    public function __contstruct($con, $userName)
    {
        $this->con = $con;

        $query = $con->prepare("SELECT * FROM users WHERE userName=:userName");

        $query->bindValue(":userName", $userName);
        $query->execute();

        $this->sqlData = $query->fetch(PDO::FETCH_ASSOC);
    }

    public function getFirstName()
    {
        return $this->sqlData["firstName"];
    }

    public function getLastName()
    {
        return $this->sqlData["lasttName"];
    }

    public function getEmail()
    {
        return $this->sqlData["email"];
    }
}
