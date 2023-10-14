<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Online Exam</title>
    <style>
	body{
    background-color:aqua ;
    position:relative;
    }
    div{
     position:absolute;
     padding:10px;
     margin:0  0 0 87%;
     color:red;
    }
    fieldset{
    color:red;
     font-weight: bold;
    }
    p{
    color:purple;
    font-style: italic;
    }
    #submit{
    background-color:green;
    color:white;
    height:50px;
    }
</style>
 <script type="text/javascript">
        var timeLeft = 600; // Time in seconds (10 minutes)
        var countdownTimer;
        
        function startTimer() {
            countdownTimer = setInterval(function() {
                timeLeft--;
                document.getElementById("timer").innerHTML = "Time Left: " + formatTime(timeLeft);
                
                if (timeLeft <= 0) {
                    clearInterval(countdownTimer);
                    submitExam();
                }
            }, 1000);
        }
        
        function formatTime(seconds) {
            var minutes = Math.floor(seconds / 60);
            var remainingSeconds = seconds % 60;
            return (minutes < 10 ? "0" : "") + minutes + ":" + (remainingSeconds < 10 ? "0" : "") + remainingSeconds;
        }
        
        function submitExam() {
            document.getElementById("exam-form").submit();
        }
    </script>
</head>
<body onload="startTimer()">
     <div id="timer" >Time Left: 10:00</div>
    <h1>Online Exam</h1>
    <form action="score.jsp" method="post" id="exam-form">
        <fieldset>
            <legend>Question 1</legend>
            <p>The river which rises in the Kamarpet hill in Chhotanagpur Plateau of Bihar and called "The River of Sorrow" is</p>
            <input type="radio" name="q1" value="1"> Mahanadi
            <input type="radio" name="q1" value="2"> Damodar
            <input type="radio" name="q1" value="3">Krishna
            </fieldset>

        <fieldset>
            <legend>Question 2</legend>
            <p>Which of the following is a trans-Himalayan river?</p>
            <input type="radio" name="q2" value="1"> Ganga
            <input type="radio" name="q2" value="2"> Yamuna
            <input type="radio" name="q2" value="3"> Sutlej
        </fieldset>
       <fieldset>
            <legend>Question 3</legend>
            <p>The Alamatti is on the river</p>
            <input type="radio" name="q3" value="1"> Godavari
            <input type="radio" name="q3" value="2"> Cauvery
            <input type="radio" name="q3" value="3">Krishna
            </fieldset>

        <fieldset>
            <legend>Question 4</legend>
            <p>Which of the following is an inland riverine port?</p>
            <input type="radio" name="q4" value="1"> Kolkata
            <input type="radio" name="q4" value="2"> Mumbai
            <input type="radio" name="q4" value="3"> Chennai
        </fieldset>
        <fieldset>
            <legend>Question 5</legend>
            <p>The main river flowing in the state of Jammu and Kashmir is</p>
            <input type="radio" name="q5" value="1"> Jhelum
            <input type="radio" name="q5" value="2"> Indus
            <input type="radio" name="q5" value="3">Chenab
            </fieldset>

        <fieldset>
            <legend>Question 6</legend>
            <p>Most of the rivers flowing westward from the Western Ghats do not form deltas because</p>
            <input type="radio" name="q6" value="1">  Of the high gradient
            <input type="radio" name="q6" value="2"> They are too slow
            <input type="radio" name="q6" value="3">  They are not perennial
        </fieldset>
        <fieldset>
            <legend>Question 7</legend>
            <p>Through which of the following sets of states does Krishna river flow?</p>
            <input type="radio" name="q7" value="1"> Karnataka, Andhra Pradesh
            <input type="radio" name="q7" value="2"> Maharashtra, Madhya Pradesh
            <input type="radio" name="q7" value="3"> Maharashtra, Karnataka
            </fieldset>

        <fieldset>
            <legend>Question 8</legend>
            <p>The river Brahmaputra is known as ________ as it enters Arunachal Pradesh</p>
            <input type="radio" name="q8" value="1"> Dibang
            <input type="radio" name="q8" value="2"> Dihang
            <input type="radio" name="q8" value="3"> Subansiri
        </fieldset>
        <fieldset>
            <legend>Question 9</legend>
            <p>The Satpura range is situated between two west flowing rivers, They are</p>
            <input type="radio" name="q9" value="1">  Narmada and Luni
            <input type="radio" name="q9" value="2">  Narmada and Tapi
            <input type="radio" name="q9" value="3"> Tapi and Mahi
            </fieldset>

        <fieldset>
            <legend>Question 10</legend>
            <p>Which one the following is a correct sequence of rivers in terms of their total basin area, in the descending order?</p>
            <input type="radio" name="q10" value="1"> Ganga, Indus, Brahmaputra, Godavari
            <input type="radio" name="q10" value="2">  Indus, Ganga, Brahmaputra, Godavari
            <input type="radio" name="q10" value="3"> Brahmaputra, Indus, Ganga, Godavari
        </fieldset>
        <input type="submit" value="Submit Exam" id="submit">
    </form>

</body>
</html>
