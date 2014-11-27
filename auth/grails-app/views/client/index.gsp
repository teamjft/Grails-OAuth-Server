
<%@ page import="com.yourapp.Client" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'client.label', default: 'Client')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-client" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><g:link controller="client" action="index" class="home">
                    <g:message code="default.home.label"/>
				</g:link>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-client" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table style="width: 100%">
			<thead>
					<tr>
						<g:sortableColumn property="clientId" title="${message(code: 'client.clientId.label', default: 'Client Id')}" />
					
						<g:sortableColumn property="clientSecret" title="${message(code: 'client.clientSecret.label', default: 'Client Secret')}" style="display:table-cell"/>
					
                        <th style="word-wrap: break-word; width: 100px" style="display:table-cell">Redirect Url</th>

					</tr>
				</thead>
				<tbody>
				<g:each in="${clientInstanceList}" status="i" var="clientInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${clientInstance.id}">${fieldValue(bean: clientInstance, field: "clientId")}</g:link></td>
					
						<td style="word-break: break-all; width: 25%">${fieldValue(bean: clientInstance, field: "clientSecret")}</td>
						<td style="word-break: break-all; width: 50%">${clientInstance.redirectUris?.first()}</td>

					</tr>
				</g:each>
				</tbody>
			</table>

		</div>
	</body>
</html>
