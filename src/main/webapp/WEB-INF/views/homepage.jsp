<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<tiles:putAttribute name="title">Home page</tiles:putAttribute>
<tiles:insertDefinition name="defaultLayout">
  <tiles:putAttribute name="body">
</head>
<body>
<h1>Home page</h1>
<p>
  ${message}<br/>
  <a href="${pageContext.request.contextPath}/team/add">Add new team</a><br/>
  <a href="${pageContext.request.contextPath}/team/list">Team list</a><br/>
</p>
  </tiles:putAttribute>
</tiles:insertDefinition>