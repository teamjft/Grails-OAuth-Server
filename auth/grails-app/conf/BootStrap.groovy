import com.jft.Role
import com.jft.User
import com.jft.UserRole
import com.yourapp.Client

class BootStrap {

    def init = { servletContext ->

        Role roleUser = new Role(authority: 'ROLE_USER').save(flush: true)

        User user = new User( username: 'neeraj', password: 'bhatt', enabled: true, accountExpired: false, accountLocked: false, passwordExpired: false ).save(flush: true)

        UserRole.create(user, roleUser, true)

        new Client(
                clientId: 'client1',
                authorizedGrantTypes: ['authorization_code', 'refresh_token', 'implicit', 'password', 'client_credentials'],
                authorities: ['ROLE_CLIENT'],
                scopes: ['read', 'write'],
                redirectUris: ['http://localhost:8082/grailsOauthPluginDemo/oauthCallBack/custom']
        ).save(flush: true)

    }
    def destroy = {
    }
}
