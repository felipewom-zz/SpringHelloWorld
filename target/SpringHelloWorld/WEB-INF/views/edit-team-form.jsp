<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<tiles:putAttribute name="title">Edit team page</tiles:putAttribute>
<tiles:insertDefinition name="defaultLayout">
    <tiles:putAttribute name="body">
        <h1>Edit team page</h1>

        <p>Here you can edit the existing team.</p>

        <p>${message}</p>
        <form:form method="POST" commandName="team"
                   action="${pageContext.request.contextPath}/team/edit/${team.id}">
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
                    <td><input type="submit" value="Edit"/></td>
                    <td></td>
                </tr>
                </tbody>
            </table>
        </form:form>

        <p><a href="${pageContext.request.contextPath}/index">Home page</a></p>
    </tiles:putAttribute>
</tiles:insertDefinition>