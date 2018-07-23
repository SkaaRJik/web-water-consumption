<!DOCTYPE html >
<html>
<head>
    <title>Slide Down Box Menu with jQuery and CSS3</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="description" content="Slide Down Box Menu with jQuery and CSS3" />
    <meta name="keywords" content="jquery, css3, sliding, box, menu, cube, navigation, portfolio, thumbnails"/>
    <link rel="shortcut icon" href="../favicon.ico" type="image/x-icon"/>
    <link rel="stylesheet" href="css/style.css" type="text/css" media="screen"/>


    <!-- The JavaScript -->
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
    <script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
</head>

<body>
<h1 class="title">Water Project</h1><br>
<div class="content">

    <div class="box">
        <div class="river-info">
            <h2>Данные о реке</h2>
            <div class="column">
                <span>Средняя ширина реки(м.)</span>
                <input type="text" id="textFieldRiverWidth" required pattern="^[0-9]*[.,]?[0-9]+$">
            </div>
            <div class="column">
                <span>Средняя глубина реки(м.)</span>
                <input type="text" id="textFieldRiverDepth" required pattern="^[0-9]*[.,]?[0-9]+$">
            </div>
            <div class="column">
                <span>Средняя скорость реки(м/c)</span>
                <input type="text" id="textFieldFlowSpeed" required pattern="^[0-9]*[.,]?[0-9]+$">
            </div>
            <div class="column">
                <span>Коэффициент поперечной диффузии</span>
                <input type="text" id="textFieldDiffusionCoef" required pattern="^[0-9]*[.,]?[0-9]+$">
            </div>
            <div class="column">
                <span>Коэффициент неконсервативности</span>
                <input type="text" id="textFieldNonConservatismCoef" value="0" required pattern="^[0-9]*[.,]?[0-9]+$">
            </div>
            <div class="column">
                <span>Округление</span>
                <input type="text" id="textFieldRound" value="4" required pattern="^[0-9]{1}$">
            </div>
        </div>
        <div class="substance-info">
            <h2>Информация о веществе</h2>
            <div class="column">
                <span>Наименование</span>
                <input type="text" id="textFieldSubstance" required pattern="">
            </div>
            <div class="column">
                <span>Доля в ЛПВ</span>
                <input type="text" id="textFieldProportion" required pattern="^[0-9]*[.,]?[0-9]+$">
            </div>
            <div class="column">
                <span>Значение CPDK</span>
                <input type="text" id="textFieldLAC" required pattern="^[0-9]*[.,]?[0-9]+$">
            </div>
            <div class="column">
                <span>Фоновая концентрация в реке</span>
                <input type="text" id="textFieldConcentration" required pattern="^[0-9]*[.,]?[0-9]+$">
            </div>
        </div>
        <div class="pipes-info-container">
            <h2>Выпуска</h2>

            <script>
                var index = 1;

                function recountIndexes() {
                    index = 1;
                    var elements = document.getElementsByClassName("pipe-info");
                    Object.keys(elements).forEach(function (item) {
                        elements[item].id="pipeInfo"+index;
                        elements[item].innerHTML = "<h2>Параметры выпуска " + index + "<input type='button' value='X' class='delete_pipe_button' onclick='deletePipe(\""+elements[item].id+"\")'></h2>";
                        index++;
                    });

                }

                function deletePipe(element) {
                    document.getElementById(element).remove();
                    recountIndexes();
                }

                function createPipe(){
                    var div = document.createElement("div");
                    div.id = "pipeInfo"+index;
                    div.className = "pipe-info";
                    div.innerHTML = "<h2>Параметры выпуска " + index + "<input type='button' value='X' class='delete_pipe_button' onclick='deletePipe(\""+div.id+"\")'></h2>";
                    document.getElementsByClassName("pipes-info-container")[0].appendChild(div);

                    index++;
                }
            </script>

            <input type="button" value="Добавить выпуск" id="create_pipe_button" onclick="createPipe()">
        </div>



    </div>
</div>



</body>
</html>