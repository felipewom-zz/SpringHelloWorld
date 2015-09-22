<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<tiles:insertDefinition name="defaultTemplate">
    <tiles:putAttribute name="body">
        <h1>Creating user</h1>
        <c:if test="${not empty user}">
            <form action="<c:url value="/user/create"/>" method="POST">
                <input type="hidden" value="${user.id}" name="id">
                <fieldset class="form-group">
                    <label for="user_name">Name</label>
                    <input type="text" class="form-control" name="user_name" id="user_name" disabled value="${user.firstname}" placeholder="Enter your name">
                </fieldset>
                <fieldset class="form-group">
                    <label for="user_age">Age</label>
                    <input type="number" class="form-control" name="age" id="user_age" disabled value="${user.age}" placeholder="18">
                </fieldset>
                <fieldset class="form-group">
                    <label for="user_profession">Profession</label>
                    <select name="profession" class="form-control" id="user_profession">
                        <option>Analyst</option>
                        <option>Developer</option>
                        <option>Design</option>
                        <option>Coordinator</option>
                        <option>Manager</option>
                    </select>
                </fieldset>
                <button type="submit" class="btn btn-secondary-outline">Create</button>
            </form>
        </c:if>
    </tiles:putAttribute>
</tiles:insertDefinition>
<script>
    //Select using the value from user
    $('select').val(${user.profession});
</script>