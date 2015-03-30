import org.apache.shiro.crypto.hash.Sha256Hash


class BootStrap {

    def init = { servletContext ->
        def user = new ShiroUser(username: "user123", passwordHash: new Sha256Hash("password").toHex())
        user.addToPermissions("*:*")
        user.save()
		//role
		def adminRole = new ShiroRole(name: "Administrator")
		adminRole.addToPermissions("printer:*:*")
		adminRole.addToPermissions("admin")
		adminRole.save()
		user.addToRoles(adminRole)
		user.save()
		
    }
    def destroy = {
    }
}
