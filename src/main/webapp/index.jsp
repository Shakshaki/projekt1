<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Patientkalender</title>
        <link rel="stylesheet" type="text/css" href="style.css" />
    </head>
    <body>
        <div class="wrapper">
            <div class="item2">
                <div class="Header">
                    <h1><img src="https://s3-eu-west-1.amazonaws.com/uploads.playbaamboozle.com/uploads/images/4895/1542358401_71269?fbclid=IwAR1W1_R56LPT4j5RSXYWg8Hk5&#45;&#45;0W1zgjjwONPnrBNUzpsGvRU2iuYUU-74"
                             width="120" height="120" alt="Sundhed" align="top">
                        Patientkalenderen</h1>
                    <h3>Din personlige hospitals guide 4.0</h3>
                    <hr color="black" size="2.5">
                </div>
                <h2>Login til din personlige kalender her</h2>
                <h3><% out.println( new Date()); %></h3>
                <h4>
                    <p>
                        bruger er oprettet med navnet <% out.print(request.getParameter("username")); %>
                    </p>
                </h4>
                <div class="item4">
                    <form class="username" action="/hello/" method="POST">
                        Brugernavn: <br>
                        <input type="text" id="user" name="username"><br>
                        Adgangskode: <br>
                        <input type="password" name="password"><br>
                        <input type="submit" id = "logind" value="log ind">  </input>
                    </form>
                    <form>
                        <input type="radio" name="type" value="patient" checked> Patient <br>
                        <input type="radio" name="type" value="personale"> Fagpersonale <br>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>



