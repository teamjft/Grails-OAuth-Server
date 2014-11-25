<%@ page import="com.yourapp.Client" %>



<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'clientId', 'error')} required">
	<label for="clientId">
		<g:message code="client.clientId.label" default="Client Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="clientId" required="" value="${clientInstance?.clientId}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'clientSecret', 'error')} ">
	<label for="clientSecret">
		<g:message code="client.clientSecret.label" default="Client Secret" />
		
	</label>
	<g:textField name="clientSecret" value="${clientInstance?.clientSecret}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'accessTokenValiditySeconds', 'error')} ">
	<label for="accessTokenValiditySeconds">
		<g:message code="client.accessTokenValiditySeconds.label" default="Access Token Validity Seconds" />
		
	</label>
	<g:field name="accessTokenValiditySeconds" type="number" value="${clientInstance.accessTokenValiditySeconds}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'refreshTokenValiditySeconds', 'error')} ">
	<label for="refreshTokenValiditySeconds">
		<g:message code="client.refreshTokenValiditySeconds.label" default="Refresh Token Validity Seconds" />
		
	</label>
	<g:field name="refreshTokenValiditySeconds" type="number" value="${clientInstance.refreshTokenValiditySeconds}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'authorities', 'error')} ">
	<label for="authorities">
		<g:message code="client.authorities.label" default="Authorities" />
		
	</label>
	

</div>

<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'authorizedGrantTypes', 'error')} ">
	<label for="authorizedGrantTypes">
		<g:message code="client.authorizedGrantTypes.label" default="Authorized Grant Types" />
		
	</label>
	

</div>

<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'resourceIds', 'error')} ">
	<label for="resourceIds">
		<g:message code="client.resourceIds.label" default="Resource Ids" />
		
	</label>
	

</div>

<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'scopes', 'error')} ">
	<label for="scopes">
		<g:message code="client.scopes.label" default="Scopes" />
		
	</label>


</div>

<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'redirectUris', 'error')} ">
	<label for="redirectUris">
		<g:message code="client.redirectUris.label" default="Redirect Uris" />
		
	</label>
    <g:textField name="redirectUris" value="${clientInstance?.redirectUris?.first()}" />


</div>

<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'additionalInformation', 'error')} ">
	<label for="additionalInformation">
		<g:message code="client.additionalInformation.label" default="Additional Information" />
		
	</label>
	

</div>

