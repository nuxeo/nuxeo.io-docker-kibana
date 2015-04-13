module.exports = {
	port: 8085,

	proxyTo: {
		host: 'localhost',
		port: 5610
	},

	// Session cookie options, see: https://github.com/expressjs/cookie-session
	sessionCookie: {
		name: '__doorman',
		maxage: process.env.COOKIE_EXPIRATION * 24 * 60 * 60 * 1000, // milliseconds until expiration (or "false" to not expire)
		secret: process.env.COOKIE_SECRET
	},

	modules: {
		// Register a new oauth app on Google Apps at
		// https://code.google.com/apis/console
		google: {
			appId: process.env.GOOGLE_CLIENTID,
			appSecret: process.env.GOOGLE_CLIENTSECRET,

			// User must be a member of this domain to successfully authenticate. If an array
			// is listed, user may authenticate as a member of ANY of the domains.
			requiredDomain: process.env.GOOGLE_DOMAIN
		}
	}
};
