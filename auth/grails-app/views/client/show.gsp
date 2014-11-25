
<%@ page import="com.yourapp.Client" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'client.label', default: 'Client')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-client" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-client" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list client">
			
				<g:if test="${clientInstance?.clientId}">
				<li class="fieldcontain">
					<span id="clientId-label" class="property-label"><g:message code="client.clientId.label" default="Client Id" /></span>
					
						<span class="property-value" aria-labelledby="clientId-label"><g:fieldValue bean="${clientInstance}" field="clientId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clientInstance?.clientSecret}">
				<li class="fieldcontain">
					<span id="clientSecret-label" class="property-label"><g:message code="client.clientSecret.label" default="Client Secret" /></span>
					
						<span class="property-value" aria-labelledby="clientSecret-label"><g:fieldValue bean="${clientInstance}" field="clientSecret"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clientInstance?.accessTokenValiditySeconds}">
				<li class="fieldcontain">
					<span id="accessTokenValiditySeconds-label" class="property-label"><g:message code="client.accessTokenValiditySeconds.label" default="Access Token Validity Seconds" /></span>
					
						<span class="property-value" aria-labelledby="accessTokenValiditySeconds-label"><g:fieldValue bean="${clientInstance}" field="accessTokenValiditySeconds"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clientInstance?.refreshTokenValiditySeconds}">
				<li class="fieldcontain">
					<span id="refreshTokenValiditySeconds-label" class="property-label"><g:message code="client.refreshTokenValiditySeconds.label" default="Refresh Token Validity Seconds" /></span>
					
						<span class="property-value" aria-labelledby="refreshTokenValiditySeconds-label"><g:fieldValue bean="${clientInstance}" field="refreshTokenValiditySeconds"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clientInstance?.authorities}">
				<li class="fieldcontain">
					<span id="authorities-label" class="property-label"><g:message code="client.authorities.label" default="Authorities" /></span>
					
						<span class="property-value" aria-labelledby="authorities-label"><g:fieldValue bean="${clientInstance}" field="authorities"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clientInstance?.authorizedGrantTypes}">
				<li class="fieldcontain">
					<span id="authorizedGrantTypes-label" class="property-label"><g:message code="client.authorizedGrantTypes.label" default="Authorized Grant Types" /></span>
					
						<span class="property-value" aria-labelledby="authorizedGrantTypes-label"><g:fieldValue bean="${clientInstance}" field="authorizedGrantTypes"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clientInstance?.resourceIds}">
				<li class="fieldcontain">
					<span id="resourceIds-label" class="property-label"><g:message code="client.resourceIds.label" default="Resource Ids" /></span>
					
						<span class="property-value" aria-labelledby="resourceIds-label"><g:fieldValue bean="${clientInstance}" field="resourceIds"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clientInstance?.scopes}">
				<li class="fieldcontain">
					<span id="scopes-label" class="property-label"><g:message code="client.scopes.label" default="Scopes" /></span>
					
						<span class="property-value" aria-labelledby="scopes-label"><g:fieldValue bean="${clientInstance}" field="scopes"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clientInstance?.redirectUris}">
				<li class="fieldcontain">
					<span id="redirectUris-label" class="property-label"><g:message code="client.redirectUris.label" default="Redirect Uris" /></span>
					
						<span class="property-value" aria-labelledby="redirectUris-label"><g:fieldValue bean="${clientInstance}" field="redirectUris"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clientInstance?.additionalInformation}">
				<li class="fieldcontain">
					<span id="additionalInformation-label" class="property-label"><g:message code="client.additionalInformation.label" default="Additional Information" /></span>
					
						<span class="property-value" aria-labelledby="additionalInformation-label"><g:fieldValue bean="${clientInstance}" field="additionalInformation"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:clientInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${clientInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
