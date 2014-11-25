
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
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-client" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="clientId" title="${message(code: 'client.clientId.label', default: 'Client Id')}" />
					
						<g:sortableColumn property="clientSecret" title="${message(code: 'client.clientSecret.label', default: 'Client Secret')}" />
					
						<g:sortableColumn property="accessTokenValiditySeconds" title="${message(code: 'client.accessTokenValiditySeconds.label', default: 'Access Token Validity Seconds')}" />
					
						<g:sortableColumn property="refreshTokenValiditySeconds" title="${message(code: 'client.refreshTokenValiditySeconds.label', default: 'Refresh Token Validity Seconds')}" />
					
						<g:sortableColumn property="additionalInformation" title="${message(code: 'client.additionalInformation.label', default: 'Additional Information')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${clientInstanceList}" status="i" var="clientInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${clientInstance.id}">${fieldValue(bean: clientInstance, field: "clientId")}</g:link></td>
					
						<td>${fieldValue(bean: clientInstance, field: "clientSecret")}</td>
					
						<td>${fieldValue(bean: clientInstance, field: "accessTokenValiditySeconds")}</td>
					
						<td>${fieldValue(bean: clientInstance, field: "refreshTokenValiditySeconds")}</td>
					
						<td>${fieldValue(bean: clientInstance, field: "additionalInformation")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>

		</div>
	</body>
</html>
