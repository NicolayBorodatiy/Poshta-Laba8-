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
        include("showViddilenya_pochty.php")
    ?>

    <form action="insertIntoViddilenya_pochty.php" method="post">
        <label>Номер</label><input name="number" type="text"><br>
        <label>Репутація</label><input name="reputation" type="text"><br>
        <input type="submit" value="Вставити рядок">
    </form>

</body>
</html>
