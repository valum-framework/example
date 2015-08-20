using Valum;
using VSGI.Soup;

var app = new Router ();

app.get("", (req, res) => {
    res.body.write ("Hello world!".data);
});

new Server ("org.valum.Example", app.handle).run ({"app", "--all"});
