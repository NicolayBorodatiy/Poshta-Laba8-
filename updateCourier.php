<?php

$mysqli = new mysqli('localhost', 'root', '', 'poshta'); // Створюємо нове підключення з назвою $mysqli за допомогою створення об'єта класу mysqli. Параметри підключення по порядку: сервер, логін, пароль, БД
$mysqli->set_charset("utf8"); // Встановлюємо кодування utf8

if (mysqli_connect_errno()) {
    printf("Підключення до сервера не вдалось. Код помилки: %s\n", mysqli_connect_error());
    exit;
}


$id = $_POST['id'];
$suma_zamovlenya = $_POST['suma_zamovlenya'];
$kilkist_posilok = $_POST['kilkist_posilok'];

$sql = "UPDATE courier SET suma_zamovlenya='$suma_zamovlenya', kilkist_posilok='$kilkist_posilok' WHERE id='$id'";


if($mysqli->query($sql)){
    echo "Рядок змінено успішно";
    }
else
    {
        echo "Error" . $sql . "<br/>" . $mysqli->error;
    }



/*Закриваємо з'єднання*/
$mysqli->close();

include("showcourier.php")
?>
