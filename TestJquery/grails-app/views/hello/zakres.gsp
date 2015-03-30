<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
<meta name="layout" content="main"/>
<title>Wybierz zakres daty</title>
</head>
<body>
  <div class="body">
  <h1>Wybierz date:</h1>
  <g:form controller="hello" action="zapisz" align="center">  
  <p>Od daty:
  	<g:datePicker name="oddaty" value="${new Date()}"
       precision="day"   noSelection="['':'-Wybierz dolny zakres-']"/>
  </p>
  <br/>
  <p>  Do daty:
     	<g:datePicker name="dodaty" value="${new Date()}"
       precision="day"   noSelection="['':'-Wybierz gorny zakres-']"/>
  </p>    
  <br/>
  <g:actionSubmit value="Zapisz"/>
  </g:form>
  </div>
</body>
</html>