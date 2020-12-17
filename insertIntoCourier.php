<?php

$mysqli = new mysqli('localhost', 'root', '', 'poshta'); // Створюємо нове підключення з назвою $mysqli за допомогою створення об'єта класу mysqli. Параметри підключення по порядку: сервер, логін, пароль, БД
$mysqli->set_charset("utf8"); // Встановлюємо кодування utf8

if (mysqli_connect_errno()) {
    printf("Підключення до сервера не вдалось. Код помилки: %s\n", mysqli_connect_error());
    exit;
}

$suma_zamovlenya = $_POST['suma_zamovlenya']; $kilkist_posilok = $_POST['kilkist_posilok'];

$sql = "INSERT INTO courier (suma_zamovlenya, kilkist_posilok) VALUES ('$suma_zamovlenya', '$kilkist_posilok' )";


if($mysqli->query($sql)){
    echo "Рядок вставлено успішно";
    }
else
    {
        echo "Error" . $sql . "<br/>" . $mysqli->error;
    }



/*Закриваємо з'єднання*/
$mysqli->close();

include("showCourier.php")
?>
