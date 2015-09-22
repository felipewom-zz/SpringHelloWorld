<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<tiles:insertDefinition name="defaultTemplate">
    <tiles:putAttribute name="body">
        <h1>Users</h1>
        <a href="<c:url value="/user/new" />" class="btn btn-floating waves-effect waves-circle grey darken-1">
            <i class="material-icons">add</i>
        </a>
        <br>
        <c:if test="${not empty userList}">
            <table class="responsive-table centered highlight bordered">
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>Name</th>
                        <th>Age</th>
                        <th>Profession</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="u" items="${userList}">
                        <tr>
                            <td><c:out value="${u.id}"/></td>
                            <td><c:out value="${u.firstname}"/></td>
                            <td><c:out value="${u.age}"/></td>
                            <td><c:out value="${u.profession}"/></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </c:if>
    </tiles:putAttribute>
</tiles:insertDefinition>
