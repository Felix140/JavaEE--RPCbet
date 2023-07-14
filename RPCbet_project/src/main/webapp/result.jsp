<div%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*" %>
    <!DOCTYPE html>
    <html>

    <head>
        <title>Esempio Contatore</title>

        <link rel="stylesheet" href="assets/css/style.css">
        <link rel="stylesheet" href="assets/css/result_style.css">
    </head>

    <body class="body-result">
        <header class="navbar navbar--login">
            <img src="assets/img/logo/rpcbet-logo-2.svg" alt="" class="hero__logo hero--login">
        </header>


        <div class="contatore">
        
            <p> Attendi a breve i risultati...</p>
            <p id="countdown"></p>
        </div>




        <div class="container" id="container" style="display:none;">
            <div class="card" id="card">Risultato della schedina:
                <div class="result">
                    <% out.println("Campo Vincita"); %>
                </div>
                <p>
                    Ritorna al tuo profilo <a href="profilo-utente.jsp" style="color: white;">CLICCA QUI</a>
                </p>
            </div>
        </div>


        <script>
            const countdownText = document.getElementById("countdown");
            let countdown = 5;

            const countdownInterval = setInterval(() => {
                countdownText.textContent = countdown;
                countdown--;

                if (countdown === 0) {
                    clearInterval(countdownInterval);
                    const contatore = document.querySelector(".contatore");
                    const container = document.getElementById("container");
                    contatore.style.display = "none";
                    container.style.display = "block";
                }
            }, 1000);
        </script>


    </body>

    </html>