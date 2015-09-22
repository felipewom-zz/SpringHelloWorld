<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<tiles:insertDefinition name="defaultTemplate">
    <tiles:putAttribute name="body">
        <h1>Creating user</h1>
        <div class="row">
        <c:if test="${not empty user}">
            <form action="<c:url value="/user/create"/>" class="col s12" method="POST">
                <div class="row">
                    <div class="input-field col s6">
                        <input placeholder="Placeholder" id="user_name" name="user_name" type="text" class="validate">
                        <label for="user_name">Name</label>
                    </div>
                    <div class="input-field col s6">
                        <input id="user_age" type="number" name="age" class="validate" placeholder="18">
                        <label for="user_age">Age</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s12">
                        <input id="email" type="email" class="validate">
                        <label for="email" data-error="Email inválido" data-success="Ok!">Email</label>
                    </div>
                </div>
                <div class="row">
                    <div class="col s12">
                        <label for="user_profession">Profession</label>
                        <select name="profession" class="form-control" id="user_profession">
                            <option value="Analyst" selected>Analyst</option>
                            <option value="Developer">Developer</option>
                            <option value="Design">Design</option>
                            <option value="Coordinator">Coordinator</option>
                            <option value="Manager">Manager</option>
                        </select>
                    </div>
                </div>
                <div class="row">
                    <div class="col s12 center">
                        <button type="submit" class="btn btn-floating waves-effect waves-circle grey darken-1">
                            <i class="material-icons">save</i>
                        </button>
                    </div>
                </div>
            </form>
            </div>
        </c:if>
    </tiles:putAttribute>
</tiles:insertDefinition>