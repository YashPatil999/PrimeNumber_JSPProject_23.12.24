 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Prime Numbers from 1 to 100</title>
</head>
<body>
    <h2>Prime Numbers between 1 and 100</h2>
    <ul>
        <%
            // Loop to find prime numbers between 1 and 100
            for (int num = 2; num <= 100; num++) {
                boolean isPrime = true;

                // Check if the number is divisible by any number between 2 and the square root of the number
                for (int i = 2; i <= Math.sqrt(num); i++) {
                    if (num % i == 0) {
                        isPrime = false;
                        break;
                    }
                }

                // If the number is prime, display it
                if (isPrime) {
                    out.println("<li>" + num + "</li>");
                }
            }
        %>
    </ul>
</body>