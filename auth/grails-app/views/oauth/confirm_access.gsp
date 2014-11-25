<%@ page import="org.springframework.security.oauth2.common.exceptions.UnapprovedClientAuthenticationException" %>
<head>
<meta name='layout' content='authentication' />
<title>Confirm Access</title>

</head>

<body>
<div class="col-sm-6 col-md-4 col-md-offset-4">
    <div class="panel panel-default">
        <div class="panel-heading">
            <strong> Please Confirm</strong>
        </div>
        <div class="panel-body">
            <g:if test="${lastException && !(lastException instanceof UnapprovedClientAuthenticationException)}">
                <div class="error">
                    <h2>Woops!</h2>

                    <p>Access could not be granted. (${lastException?.message})</p>
                </div>
            </g:if>
            <g:else>
                <g:if test='${flash.message}'>
                    <div class='login_message'>${flash.message}</div>
                </g:if>
                <div class='fheader'>Please Confirm</div>
                <div>You hereby authorize <b>${applicationContext.getBean('clientDetailsService')?.loadClientByClientId(params.client_id)?.clientId ?: 'n/a'}</b> to access your protected resources.</div>
                <form method='POST' id='confirmationForm' class='cssform'>
                    <p>
                        <input name='user_oauth_approval' type='hidden' value='true' />
                        <label><input name="authorize" value="Authorize" type="submit" /></label>
                    </p>
                </form>
                <form method='POST' id='denialForm' class='cssform'>
                    <p>
                        <input name='user_oauth_approval' type='hidden' value='false' />
                        <label><input name="deny" value="Deny" type="submit" /></label>
                    </p>
                </form>
            </g:else>
        </div>
        <div class="panel-footer ">
            Don't have an account! <a href="#" onClick=""> Sign Up Here </a>
        </div>
    </div>
</div>
</body>
