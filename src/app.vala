using Valum;
using VSGI;

var app = new Router ();

app.get ("/", (req, res) => {
	res.headers.set_content_type ("text/html", null);
	return res.expand_utf8 ("Hello world!");
});

Server.new_with_application ("http", "org.valum.Example", app.handle).run ({"app", "--all"});
