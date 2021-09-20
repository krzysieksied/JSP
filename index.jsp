
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1 style="color:red">Formularz zgłoszeniowy</h1>
        <div style="color:blue" style="text-align: justify">
            <form action="wyjscie.jsp" method="post">
                <h1 style="word-spacing: 65px">
                    <label>Imię:</label> <input type="text" name="imie"  />
                </h1>
                <h1 
                    <label>Nazwisko:</label> <input type="text" name="nazwisko"/>
                </h1>


                <h1 style="word-spacing: 60px"> Płeć:
                    <input type="radio" name="Płeć" value="Kobieta">K
                    <input type="radio" name="Płeć" value="Mężczyzna">M
                </h1>

                <h1>Kurs:
                    
                    <input type="checkbox" name="Kurs" value="PHP"> PHP
                    <input type="checkbox" name="Kurs" value="C++"> C++
                    <input type="checkbox" name="Kurs" value="JAVA"> JAVA
                   
                    </h1>

                <h1>Region:
                        <select name="select">
                        <option>Dolnośląskie</option>
                        <option>Kujawsko-Pomorksie</option>
                        <option>Lubelskie</option>
                        <option>Lubuskie</option>
                        <option>Łódzkie</option>
                        <option>Małopolskie</option>
                        <option>Mazowieckie</option>
                        <option>Opolskie</option>
                        <option>Podkarpackie</option>
                        <option>Podlsakie</option>
                        <option>Pomorskie</option>
                        <option>Śląskie</option>
                        <option>Świętokrzyskie</option>
                        <option>Warmińsko-Mazurskie</option>
                        <option>Wielkopolskie</option>
                        <option>Zachodniopomorskie</option>
                    </select>
                </h1>
                <h1>Uwagi:   <textarea name="texarea"></textarea>
                </h1>

                <input type="submit" value="Wyślij formularz">

                <input type="reset" value="Wyczyść dane">

            </form>
        </div>
    </body>
</html>
