<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%--<c:set var="cp" value="${pageContext.request.contextPath}" scope="request" />--%>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/site.css" /> 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Blue server</title>
        <script type="text/javascript" src="resources/js/amcharts.js"></script>
        <script type="text/javascript" src="resources/js/serial.js"></script>
        <script type="text/javascript" src="resources/themes/none.js"></script>

    </head>

    <body>

        <div style="height: auto">

            <form name="outputlist"  method="POST">
                <table style="width:auto; border: 1px solid black;">
                    <tr>
                        <td><label>Select Sensor:</label> 
                            <select id ="Dsensor" name="Sensors">
                                <option value="1">Sensor1</option>
                                <option value="2">Sensor2</option>
                                <option value="3">Sensor3</option>
                                <option value="4">Sensor4</option>
                                <option value="5">Sensor5</option>
                                <option value="6">Sensor6</option>
                                <option value="7">Sensor7</option>
                                <option value="8">Sensor8</option>
                            </select> </td>
                        <td><label>Limit log list:</label> <input id="idtext" type='text' name='value' /></td>
                        <td><input  onclick="collectValues()" type="submit" value="OK" class="btn"></td>
                        <td><label>Auto refresh</label> <input type="checkbox" id="AutoRefresh"/></td>
                    </tr>
                </table>
            </form>
            <script type="text/javascript"
                    src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
            <script type="text/javascript">
                        $(document).ready(function () {setInterval(function() {var randomnumber = Math.floor(Math.random() * 100);
                        $('#show').text('I am getting refreshed every 3 seconds..! Random Number ==> ' + randomnumber); }, 3000); });
            </script>


            <script type="text/javascript">
                        var sensorValues = [];
                        var sensorTime = [];
                        var sensorDate = [];
                        var chartData = generateChartData();
                        var sensorNR;
                        var count;
                        function collectValues() {

                        count = document.getElementById("idtext").value;
                                var e = document.getElementById("Dsensor");
                                sensorNR = e.options[e.selectedIndex].value;
                                var a = 0;
                                if (sensorNR == 1) {
                <c:forEach var="sensor" items="${listSensors}" varStatus="status">
                        sensorValues[a] = ${sensor.channel1};
                                sensorDate[a] = "${sensor.date}";
                                sensorTime[a] = "${sensor.time}";
                                a++;
                </c:forEach>
                        } else if (sensorNR == 2) {
                <c:forEach var="sensor" items="${listSensors}" varStatus="status">
                        sensorValues[a] = ${sensor.channel2};
                                sensorDate[a] = "${sensor.date}";
                                sensorTime[a] = "${sensor.time}";
                                a++;
                </c:forEach>
                        } else if (sensorNR == 3) {
                <c:forEach var="sensor" items="${listSensors}" varStatus="status">
                        sensorValues[a] = ${sensor.channel3};
                                sensorDate[a] = "${sensor.date}";
                                sensorTime[a] = "${sensor.time}";
                                a++;
                </c:forEach>
                        } else if (sensorNR == 4) {
                <c:forEach var="sensor" items="${listSensors}" varStatus="status">
                        sensorValues[a] = ${sensor.channel4};
                                sensorDate[a] = "${sensor.date}";
                                sensorTime[a] = "${sensor.time}";
                                a++;
                </c:forEach>
                        } else if (sensorNR == 5) {
                <c:forEach var="sensor" items="${listSensors}" varStatus="status">
                        sensorValues[a] = ${sensor.channel5};
                                sensorDate[a] = "${sensor.date}";
                                sensorTime[a] = "${sensor.time}";
                                a++;
                </c:forEach>
                        } else if (sensorNR == 6) {
                <c:forEach var="sensor" items="${listSensors}" varStatus="status">
                        sensorValues[a] = ${sensor.channel6};
                                sensorDate[a] = "${sensor.date}";
                                sensorTime[a] = "${sensor.time}";
                                a++;
                </c:forEach>
                        } else if (sensorNR == 7) {
                <c:forEach var="sensor" items="${listSensors}" varStatus="status">
                        sensorValues[a] = ${sensor.channel7};
                                sensorDate[a] = "${sensor.date}";
                                sensorTime[a] = "${sensor.time}";
                                a++;
                </c:forEach>
                        } else if (sensorNR == 8) {
                <c:forEach var="sensor" items="${listSensors}" varStatus="status">
                        sensorValues[a] = ${sensor.channel8};
                                sensorDate[a] = "${sensor.date}";
                                sensorTime[a] = "${sensor.time}";
                                a++;
                </c:forEach>
                        }

                        }


                var chart = AmCharts.makeChart("chartdiv",
                {
                "type": "serial",
                        "pathToImages": "http://cdn.amcharts.com/lib/3/images/",
                        "categoryField": "date",
                        "dataDateFormat": "YYYY-MM JJ:NN:SS:QQQ",
                        "theme": "default",
                        "categoryAxis": {
                        "minPeriod": "fff",
                                "labelRotation": "90",
                                "parseDates": false
                        },
                        "chartCursor": {
                        "categoryBalloonDateFormat": "JJ:NN:SS"
                        },
                        "chartScrollbar": {},
                        "trendLines": [],
                        "graphs": [
                        {
                        "bullet": "round",
                                "id": "Sensor",
                                "title": "Sensor Value",
                                "valueField": "Value"
                        }
                        ],
                        "guides": [],
                        "valueAxes": [
                        {
                        "id": "ValueAxis-1",
                                "title": "Sensor Value"
                        }
                        ],
                        "allLabels": [],
                        "balloon": {},
                        "legend": {
                        "useGraphSettings": true
                        },
                        "titles": [
                        {
                        "id": "sensor Graph",
                                "size": 15,
                                "text": "Sensor Graph"
                        }
                        ],
                        "dataProvider": chartData
//                        
                }
                );
                        chart.addListener("rendered", zoomChart);
                        zoomChart();
// this method is called when chart is first inited as we listen for "dataUpdated" event
                        function zoomChart() {
// different zoom methods can be used - zoomToIndexes, zoomToDates, zoomToCategoryValues
                        chart.zoomToIndexes(chartData.length - 40, chartData.length - 1);
                        }

                function generateChartData() {
                var chartData = [];
                        var value;
                        collectValues();
//                    s = 0;
//                <c:forEach var="sensor" items="${listSensors}" varStatus="status">
//                    sensorValues[s] = ${sensor.channel8};
//                    sensorDate[s] = "${sensor.date}";
//                    sensorTime[s] = "${sensor.time}";
//                    s++;
//                </c:forEach>



                        console.log(sensorNR);
                        console.log(count);
                        for (var i = 0; i < sensorValues.length; i++) {

                value = sensorValues[i];
                        var date = sensorDate[i] + "\n" + sensorTime[i];
                        chartData.push({
                        Value: value,
                                date: date
                        });
                }
                console.log(chartData);
                        return chartData;
                }
                </script>


            </div>
            <div class="charten" id="chartdiv"></div>

            <div id="show" align="center"></div>
            
            <div class="loglist">
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
        </div>
    </body>
</html>
