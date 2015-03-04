<%-- 
    Document   : graf
    Created on : 2015-mar-04, 14:42:50
    Author     : nils
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
            <script type="text/javascript">
                var sensorValues = [];
                var sensorValues2 = [];
                var sensorValues3 = [];
                var sensorValues4 = [];
                var sensorValues5 = [];
                var sensorValues6 = [];
                var sensorValues7 = [];
                var sensorValues8 = [];
                var sensorTime = [];
                var sensorDate = [];
                var chartData = generateChartData();
                function collectValues() {

                    var a = 0;
                <c:forEach var="sensor" items="${listSensors}" varStatus="status">
                    sensorValues[a] = ${sensor.channel1};
                    sensorValues2[a] = ${sensor.channel2};
                    sensorValues3[a] = ${sensor.channel3};
                    sensorValues4[a] = ${sensor.channel4};
                    sensorValues5[a] = ${sensor.channel5};
                    sensorValues6[a] = ${sensor.channel6};
                    sensorValues7[a] = ${sensor.channel7};
                    sensorValues8[a] = ${sensor.channel8};
                    sensorDate[a] = "${sensor.date}";
                    sensorTime[a] = "${sensor.time}";
                    a++;
                </c:forEach>


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
                                    "id": "Sensor 1",
                                    "title": "Sensor 1",
                                    "valueField": "Value"
                                    
                                },
                                {
                                    "bullet": "round",
                                    "id": "Sensor 2",
                                    "title": "Sensor 2",
                                    "valueField": "Value2"
                                }
                                ,
                                {
                                    "bullet": "round",
                                    "id": "Sensor 3",
                                    "title": "Sensor 3",
                                    "valueField": "Value3"
                                },
                                {
                                    "bullet": "round",
                                    "id": "Sensor 4",
                                    "title": "Sensor 4",
                                    "valueField": "Value4"
                                },
                                {
                                    "bullet": "round",
                                    "id": "Sensor 5",
                                    "title": "Sensor 5",
                                    "valueField": "Value5"
                                },
                                {
                                    "bullet": "round",
                                    "id": "Sensor 6",
                                    "title": "Sensor 6",
                                    "valueField": "Value6"
                                },
                                {
                                    "bullet": "round",
                                    "id": "Sensor 7",
                                    "title": "Sensor 7",
                                    "valueField": "Value7"
                                },
                                {
                                    "bullet": "round",
                                    "id": "Sensor 8",
                                    "title": "Sensor 8",
                                    "valueField": "Value8"
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
                                "useGraphSettings": true,
                                "valueText": ""
                            },
                            "titles": [
                                {
                                    "id": "sensor Graph",
                                    "size": 15,
                                    "text": "Sensor Graph"
                                }
                            ],
                            "dataProvider": chartData

                        }
                );
                function generateChartData() {
                    var chartData = [];
                    var value;
                    var value2;
                    collectValues();
                    for (var i = 0; i < sensorValues.length; i++) {

                        value = sensorValues[i];
                        value2 = sensorValues2[i];
                        value3 = sensorValues3[i];
                        value4 = sensorValues4[i];
                        value5 = sensorValues5[i];
                        value6 = sensorValues6[i];
                        value7 = sensorValues7[i];
                        value8 = sensorValues8[i];
                        var date = sensorDate[i] + "\n" + sensorTime[i];
                        chartData.push({
                            Value: value,
                            Value2: value2,
                            Value3: value3,
                            Value4: value4,
                            Value5: value5,
                            Value6: value6,
                            Value7: value7,
                            Value8: value8,
                            date: date
                        });
                    }

                    return chartData;
                }
            </script>

    </body>
</html>
