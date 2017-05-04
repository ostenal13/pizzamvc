<%-- 
    Document   : order
    Created on : Feb 7, 2017, 3:13:05 PM
    Author     : John Phillips
--%>

<%@page import="pizzamvc.PizzaOrder"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alyssa's JSP Pizza Order</title>
        <link rel="stylesheet" href="mystyle.css">
    </head>
    <body>
        <h1>Thank you for your order!</h1>
        <h2>Order details:</h2>
        <p>Email = ${myOrder.email}</p>
        <p>Size = ${myOrder.size}</p>
        <p>Toppings: 
            <%
                double total=0;
            String size = request.getParameter("size");
            
            switch(size)
            {
                case "large":
                    total +=7;
                    break;
                case "medium":
                    total += 6;
                    break;
                case "small":
                    total += 5;
                    break;
            }
 
            String toppings[] = request.getParameterValues("toppings");
            if (toppings != null && toppings.length != 0)
            {
                out.println("<p>Toppings: ");
                for (String myTopping : toppings)
                {   total+=0.75;
                    out.println(myTopping + ", ");
                }
                out.println("<p>");
                out.println("Your total is: " + total);
                out.println("<p>");
            }
            %>
        </p>
        <p><a href='home.html'>Return to home page</a></p>
    </body>
</html>
