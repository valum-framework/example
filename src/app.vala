using Valum;
using Valum.ContentNegotiation;
using VSGI;

public int main (string[] args) {
	var app = new Router ();

	app.use (basic ());

	app.use (accept ("text/plain"));
	app.use (accept_charset ("UTF-8"));

	app.get ("/", (req, res) => {
		return res.expand_utf8 ("Hello world!");
	});

	return Server.@new ("http", handler: app).run (args);
}
