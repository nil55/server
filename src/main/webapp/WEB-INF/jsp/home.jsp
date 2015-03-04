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
        <script type="text/javascript" src="jquery.js"></script>
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js">
        </script>
        <script>
            function autoref() {
                $(document).ready(function () {
                    setInterval(function () {
                        cache_clear();
                    }, 3000);
                });
            }
                function cache_clear()
                {
                    window.location.reload(true);
            }
        </script>
    </head>

    <body>

        <div id="menu">
            <form name="outputlist"  method="POST">
                <table style="width:auto; border: 1px solid black;">
                    <tr>
                        <td><label>Limit log list:</label> <input id="idtext" type='text' name='value' value="100" /></td>
                        <td><input   type="submit" value="OK" class="btn"></td>
                        <td><input type='button' value='AUTO-REFRESH' class="btn" onclick="cache_clear()"/></td>
                    </tr>
                </table>
            </form>

        </div>

        <div id="chartSettings" style="height: auto"><%@ include file="graf.jsp" %></div>

        <div class="charten" id="chartdiv"></div>

        <div id="logList" class="loglist"><%@ include file="listan.jsp" %></div>
    </body>
</html>
