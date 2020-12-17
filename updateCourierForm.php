<html>
<head>
    <meta charset="utf-8">
    <meta name="keywords" content="Лабораторна робота, MySQL, з'єднання з базою даних">
    <meta name="description" content="Лабораторна робота. З'єднання з базою даних">
    <title>Вставка даних</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

    <?php
        include("showCourier.php")
    ?>

<form action="updateCourier.php" method="post">
        <label>ІД рядка який змінюємо</label><input name="id" type="text"><br>
        <label>Нове значення Сума Замовлення</label><input name="suma_zamovlenya" type="text"><br>
        <label>Нове значення Кількість Посилок</label><input name="kilkist_posilok" type="text"><br>
        <input type="submit" value="Змінюємо рядок">
</form>

</body>
</html>