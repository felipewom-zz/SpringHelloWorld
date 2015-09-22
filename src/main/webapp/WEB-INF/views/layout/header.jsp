<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib  uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<header>
    <nav class="navbar-wrapper dark-theme">
        <a class="brand-logo" href="<c:url value='/home'/>">Spring::MVC::Tiles</a>
        <a href="#" data-activates="mobile-demo" class="button-collapse waves-effect waves-circle"><i class="material-icons">menu</i></a>
        <form id="seach-form" action="<c:url value='/home'/>" method="get">
            <div class="right input-field hide-on-med-and-down">
                <input id="search-input" type="search" required>
                <label for="search-input">
                    <i id="search-go" class="material-icons">search</i><i id="search-close" class="material-icons">close</i>
                </label>
            </div>
        </form>
        <ul class="right hide-on-med-and-down">
            <li class="${fn:endsWith(pageContext.request.requestURI, "/users/index.jsp") ? 'active' : 'none'}">
                <a  href="<c:url value='/users'/>">Users</a>
            </li>
            <li class="${fn:endsWith(pageContext.request.requestURI, "/groups/index.jsp") ? 'active' : 'none'}">
                <a href="<c:url value='/groups'/>">Groups</a>
            </li>
            <li class="${fn:endsWith(pageContext.request.requestURI, "/about.jsp") ? 'active' : 'none'}">
                <a href="<c:url value='/about'/>">About</a>
            </li>
        </ul>
        <ul class="side-nav" id="mobile-demo">
            <li class="${fn:endsWith(pageContext.request.requestURI, "/users/index.jsp") ? 'active' : 'none'}">
                <a  href="<c:url value='/users'/>">Users</a>
            </li>
            <li class="${fn:endsWith(pageContext.request.requestURI, "/groups/index.jsp") ? 'active' : 'none'}">
                <a href="<c:url value='/groups'/>">Groups</a>
            </li>
            <li class="${fn:endsWith(pageContext.request.requestURI, "/about.jsp") ? 'active' : 'none'}">
                <a href="<c:url value='/about'/>">About</a>
            </li>
        </ul>
    </nav>
</header>