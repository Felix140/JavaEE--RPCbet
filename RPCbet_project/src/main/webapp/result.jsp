<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*" %>
    <!DOCTYPE html>
    <html>

    <head>
        <title>Esempio Contatore</title>
        <style>
            .container {
                width: 300px;
                height: 200px;
                background-color: lightgray;
                display: flex;
                justify-content: center;
                align-items: center;
            }

            .card {
                width: 300px;
                height: 200px;
                background-color: lightblue;
                display: none;
                text-align: center;
                font-size: 24px;
                padding-top: 80px;
                margin: 0 auto;
            }
        </style>
    </head>

    <body>
        <div class="container" id="container">
            <span id="counter">5</span>
        </div>

        <div class="card" id="card">
            Compliment! Hai vinto stocazzo
        </div>

        <script>
            setTimeout(function () {
                var counter = 5;
                var container = document.getElementById('container');
                var card = document.getElementById('card');
                var counterElement = document.getElementById('counter');
                var interval = setInterval(function () {
                    counterElement.innerHTML = counter;
                    counter--;
                    if (counter < 0) {
                        clearInterval(interval);
                        container.style.display = 'none';
                        card.style.display = 'block';
                    }
                }, 1000);
            }, 5000);
        </script>
    </body>

    </html>