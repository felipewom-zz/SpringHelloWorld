<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<tiles:insertDefinition name="defaultLayout">
    <tiles:putAttribute name="body">
        <h1>Add team page</h1>

        <p>Here you can add a new team.</p>
        <form:form method="POST" commandName="team" action="${pageContext.request.contextPath}/team/add">
            <table>
                <tbody>
                <tr>
                    <td>Name:</td>
                    <td><form:input path="name"/></td>
                </tr>
                <tr>
                    <td>Rating:</td>
                    <td><form:input path="rating"/></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Add"/></td>
                    <td></td>
                </tr>
                </tbody>
            </table>
        </form:form>

        <p><a href="${pageContext.request.contextPath}/index">Home page</a></p>
    </tiles:putAttribute>
</tiles:insertDefinition>