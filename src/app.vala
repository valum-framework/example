using Valum;
using VSGI.HTTP;

var app = new Router ();

app.get ("/", (req, res) => {
	res.headers.set_content_type ("text/html", null);
	return res.expand_utf8 ("Hello world!");
});

new Server ("org.valum.Example", app.handle).run ({"app", "--all"});
