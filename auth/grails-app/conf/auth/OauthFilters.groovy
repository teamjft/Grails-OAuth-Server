package auth

class OauthFilters {

    def filters = {
        all(controller:'*', action:'*') {
            before = {

               log.debug("Request: ${params}")
               println("Request: ${params}")

            }
            after = { Map model ->

            }
            afterView = { Exception e ->

            }
        }
    }
}
