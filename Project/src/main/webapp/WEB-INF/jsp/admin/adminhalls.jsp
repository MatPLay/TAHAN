
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java"  contentType="text/html; charset=UTF-16" pageEncoding="UTF-16" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page isELIgnored="false" %>

<fmt:setLocale value="${locale}"/>
<fmt:setBundle basename="messages"/>

<!DOCTYPE html>
<html xml:lang="${locale}">
<head>
    <title>Halls</title>
</head>
<body>
<jsp:include page="/WEB-INF/jsp/admin/aheader.jsp"/>

<div class="container">
    <div class="row">
        <table class="menu-table-1 h-table table-a-top">
            <tr>
                <td class="menu-table-item centered">
                    <div class="form-group-a white-wrap">
                        <form action="${pageContext.request.contextPath}/save_hall" method="post">
                            <table class="table-a-top">
                                <tr>
                                    <td>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <label for="newHallId"><fmt:message key="halls.hall"/></label>
                                                <input type="text" id="newHallId" class="form-control-a" required  placeholder="" name="hallId">

                                            </div>
                                        </div>
                                    </td>
                                    <td>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <label for="newHallGuestsNumber"><fmt:message key="halls.ppl"/></label>
                                                <input type="text" id="newHallGuestsNumber" class="form-control-a" required placeholder="" name="hallGuestsNumber">
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                            <div class="row form-group-a">
                                <div class="col-md-12"  style="text-align: start; left: 5%">
                                    <label for="newHallName"><fmt:message key="halls.name"/></label>
                                    <input type="text" id="newHallName" class="form-control-a" required placeholder="" name="hallName" style="width: 90%">
                                </div>
                            </div>
                            <div class="row form-group-a">
                                <div class="col-md-12" style="text-align: start; left: 5%">
                                    <label for="newHallDescription"><fmt:message key="halls.description"/></label>
                                    <textarea name="hallDescription" id="newHallDescription" required cols="25" rows="6" class="form-control-a" style="width: 90%"></textarea>
                                </div>
                            </div>
                            <div class="row form-group-a">
                                <div class="col-md-12" >
                                    <input type="submit" class="btn btn-primary btn-outline btn-lg" value="<fmt:message key="admin.addnew"/>">
                                </div>
                            </div>
                        </form>
                    </div>
                </td>
                <c:set var="count" value="1"/>
                <c:forEach var="hall" items="${halls}">
                <c:set var="count" value="${count+1}"/>
                <td class="menu-table-item centered">
                    <div class="form-group-a"  id="form-wrap-a">
                        <div class="row form-group-a">
                            <div class="col-md-12 centered" style="margin-top: 15px">
                                <label for="fieldSubmit"></label>
                                <a href="${pageContext.request.contextPath}/admin_reservation?hkey=${hall.id}" id="fieldSubmit" class="btn btn-primary btn-outline btn-lg"><fmt:message key="admin.hallReservations"/></a>
                            </div>
                        </div>
                        <form action="${pageContext.request.contextPath}/update_hall?ukey=${hall.id}" method="post">
                            <table class="table-a-top">
                                <tr>
                                    <td>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <label for="hallId"><fmt:message key="halls.hall"/></label>
                                                <input type="text" id="hallId" class="form-control-a" required value="${hall.id}" placeholder="" name="hallId">
                                            </div>
                                        </div>
                                    </td>
                                    <td>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <label for="hallGuestsNumber"><fmt:message key="halls.ppl"/></label>
                                                <input type="text" id="hallGuestsNumber" class="form-control-a" required value="${hall.guestsNumber}" placeholder="" name="hallGuestsNumber">
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                            <div class="row form-group-a">
                                <div class="col-md-12"  style="text-align: start; left: 5%">
                                    <label for="hallName"><fmt:message key="halls.name"/></label>
                                    <input type="text" id="hallName" class="form-control-a" required value="${hall.name}" placeholder="" name="hallName" style="width: 90%">
                                </div>
                            </div>
                            <div class="row form-group-a">
                                <div class="col-md-12" style="text-align: start; left: 5%">
                                    <label for="hallDescription"><fmt:message key="halls.description"/></label>
                                        <textarea name="hallDescription" id="hallDescription" required cols="25" rows="6" class="form-control-a" style="width: 90%">${hall.description}</textarea>
                                </div>
                            </div>
                            <div class="row form-group-a">
                                <div class="col-md-12">
                                    <input type="submit" class="btn btn-primary btn-outline btn-lg" value="<fmt:message key="admin.update"/>">
                                </div>
                            </div>
                        </form>
                        <form action="${pageContext.request.contextPath}/delete_hall?dkey=${hall.id}" method="post">
                            <div class="row form-group-a">
                                <div class="col-md-12">
                                    <input type="submit" class="btn btn-primary btn-outline btn-lg" value="<fmt:message key="admin.delete"/>">
                                </div>
                            </div>
                        </form>
                    </div>
                </td>
                <c:if test="${count%3==0}">
            </tr>
            <tr>
                </c:if>
                </c:forEach>
            </tr>
        </table>
    </div>
</div>

<jsp:include page="/WEB-INF/jsp/footer.jsp"/>

</body>
</html>