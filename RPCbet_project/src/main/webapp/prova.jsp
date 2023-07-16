<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<script>
  function getSaldo() {
    var xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function() {
      if (xhr.readyState === 4 && xhr.status === 200) {
        var saldo = parseFloat(xhr.responseText);
        document.getElementById("saldo").textContent = saldo;
      }
    };
    xhr.open("GET", "Servlet_SaldoUtente", true);
    xhr.send();
  }

  // Chiama la funzione getSaldo all'avvio della pagina
  getSaldo();
</script>





<span id="saldo"></span>




</body>
</html>