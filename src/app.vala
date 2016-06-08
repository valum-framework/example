using Valum;
using Valum.ContentNegotiation;
using VSGI;

public int main (string[] args) {
	var app = new Router ();

	app.use (basic ());

	app.use (accept ("text/plain", (req, res, next) => {
		return next ();
	}));

	app.get ("/", (req, res) => {
		return res.expand_utf8 ("Hello world!");
	});

	return Server.new_with_application ("http", "org.valum.Example", app.handle).run (args);
}
