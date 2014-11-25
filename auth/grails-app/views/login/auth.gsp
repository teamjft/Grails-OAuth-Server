<html>
<head>
	<meta name='layout' content='authentication'/>
	<title><g:message code="springSecurity.login.title"/></title>

</head>

<body>

<div class="col-sm-6 col-md-4 col-md-offset-4">
    <div class="panel panel-default">
        <div class="panel-heading">
            <strong> Sign in to continue</strong>
        </div>
        <div class="panel-body">
            <g:if test='${flash.message}'>
                <div class='alert alert-danger'>${flash.message}</div>
            </g:if>

            <form action='${postUrl}' method='POST' id='loginForm' class='cssform' autocomplete='off'>
                <fieldset>
                    <div class="row">
                        <div class="center-block">
                            <img class="profile-img"
                                 src="https://lh5.googleusercontent.com/-b0-k99FZlyE/AAAAAAAAAAI/AAAAAAAAAAA/eu7opA4byxI/photo.jpg?sz=120" alt="">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12 col-md-10  col-md-offset-1 ">
                            <div class="form-group">
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="glyphicon glyphicon-user"></i>
                                    </span>
                                    <input type='text' class='form-control' name='j_username' id='username' placeholder="Username" autofocus/>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="glyphicon glyphicon-lock"></i>
                                    </span>
                                    <input type='password'  name='j_password' id='password' class="form-control" placeholder="Password"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <input type='submit' class="btn btn-lg btn-primary btn-block" id="submit"  value="Sign in"/>
                            </div>
                        </div>
                    </div>
                </fieldset>
            </form>
        </div>
        <div class="panel-footer ">
            Don't have an account! <a href="#" onClick=""> Sign Up Here </a>
        </div>
    </div>
</div>



<script type='text/javascript'>
	<!--
	(function() {
		document.forms['loginForm'].elements['j_username'].focus();
	})();
	// -->

</script>
</body>
</html>
