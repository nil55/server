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
                        <td><label>Select Sensor:</label> <select id ="Dsensor" name="Sensors">
                                <option value="1">Sensor1</option>
                                <option value="2">Sensor2</option>
                                <option value="3">Sensor3</option>
                                <option value="4">Sensor4</option>
                                <option value="5">Sensor5</option>
                                <option value="6">Sensor6</option>
                                <option value="7">Sensor7</option>
                                <option value="8">Sensor8</option>
                            </select> </td>
                            <td><label>Limit log list:</label> <input type='text' name='value' /></td>
                            <td><input type="submit" value="OK" class="btn"></td>
                            <td><label>Auto refresh</label> <input type="checkbox" id="AutoRefresh"/></td>
                </tr>
                </table>
            </form>
            <script type="text/javascript">
                var sensorDeta = [];
                var a = 0;
                var strUser;
                function myFunction() {
                    var e = document.getElementById("Dsensor");
                    strUser = e.options[e.selectedIndex].value;
                    console.log(strUser);
                }
//                if (strUser == 2) {
                <c:forEach var="sensor" items="${listSensors}" varStatus="status">
                sensorDeta[a] = ${sensor.channel2};
                a++;
                </c:forEach>

//                }

                var chartData = generateChartData();
                var chart = AmCharts.makeChart("chartdiv", {
                    "type": "serial",
                    "theme": "none",
                    "pathToImages": "images/",
                    "dataProvider": chartData,
                    "valueAxes": [{
                            "axisAlpha": 0.2,
                            "dashLength": 1,
                            "position": "left"
                        }],
                    "mouseWheelZoomEnabled": true,
                    "graphs": [{
                            "id": "g1",
                            "balloonText": "[[category]]<br/><b><span style='font-size:14px;'>value: [[value]]</span></b>",
                            "bullet": "round",
                            "bulletBorderAlpha": 1,
                            "bulletColor": "#FFFFFF",
                            "hideBulletsCount": 50,
                            "title": "red line",
                            "valueField": "visits",
                            "useLineColorForBulletBorder": true
                        }],
                    "chartScrollbar": {
                        "autoGridCount": true,
                        "graph": "g1",
                        "scrollbarHeight": 40
                    },
                    "chartCursor": {
                        "cursorPosition": "mouse"
                    },
                    "categoryField": "date",
                    "categoryAxis": {
                        "parseDates": true,
                        "axisColor": "#DADADA",
                        "dashLength": 1,
                        "minorGridEnabled": true
                    },
                    "exportConfig": {
                        menuRight: '20px',
                        menuBottom: '30px',
                        menuItems: [{
                                icon: 'images/export.png',
                                format: 'png'
                            }]
                    }
                });
                chart.addListener("rendered", zoomChart);
                zoomChart();
// this method is called when chart is first inited as we listen for "dataUpdated" event
                function zoomChart() {
// different zoom methods can be used - zoomToIndexes, zoomToDates, zoomToCategoryValues
                    chart.zoomToIndexes(chartData.length - 40, chartData.length - 1);
                }


// generate some random data, quite different range
                function generateChartData() {
                    var chartData = [];
                    var firstDate = new Date();
                    firstDate.setDate(firstDate.getDate() - 5);
                    for (var i = 0; i < 100; i++) {
// we create date objects here. In your data, you can have date strings
// and then set format of your dates using chart.dataDateFormat property,
// however when possible, use date objects, as this will speed up chart rendering.
                        var newDate = new Date(firstDate);
                        newDate.setDate(newDate.getDate() + i);
                        var visits = sensorDeta[i];
                   
                        chartData.push({
                            date: newDate,
                            visits: visits
                        });
                    }
                    return chartData;
                }
            </script>


        </div>
        <div class="charten" id="chartdiv"></div>
        
        
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
