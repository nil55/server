<%-- 
    Document   : showdata
    Created on : 2015-mar-04, 13:13:10
    Author     : nils
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
    </head>
    <body>
        <table class="table">
            <thead>
                <tr class="listTitles">
                    <th>Name</th>
                    <th>Date</th>
                    <th>Time</th>
                    <th>Channel 1</th>
                    <th>Channel 2</th>
                    <th >Channel 3</th>
                    <th>Channel 4</th>
                    <th>Channel 5</th>
                    <th>Channel 6</th>
                    <th>Channel 7</th>
                    <th>Channel 8</th>
                </tr>
            </thead>
            <tbody>
            <c:forEach var="sensor" items="${listSensors}" varStatus="status">



                <tr class="listData">
                    <td>${sensor.fileName}</td>
                    <td>${sensor.date}</td>
                    <td>${sensor.time}</td>
                    <td>${sensor.channel1}</td>
                    <td>${sensor.channel2}</td>
                    <td>${sensor.channel3}</td>
                    <td>${sensor.channel4}</td>
                    <td>${sensor.channel5}</td>
                    <td>${sensor.channel6}</td>
                    <td>${sensor.channel7}</td>
                    <td>${sensor.channel8}</td>               
                </tr>
            </c:forEach>    
        </tbody>
    </table>
</body>
</html>
