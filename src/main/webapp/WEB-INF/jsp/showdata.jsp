<%-- 
    Document   : showdata
    Created on : 2015-mar-04, 13:13:10
    Author     : nils
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
        <table class="table">
                <thead>
                    <tr class="listTitles">
                        <th>Name</th>
                        <th>Date</th>
                        <th>Time</th>
                        <th>Channel1</th>
                        <th>Channel2</th>
                        <th >Channel3</th>
                        <th>Channel4</th>
                        <th>Channel5</th>
                        <th>Channel6</th>
                        <th>Channel7</th>
                        <th>Channel8</th>
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
