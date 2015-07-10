using Valum;
using VSGI.Soup;

var app = new Router ();

app.get("", (req, res) => {
    res.body.write ("Hello world!".data);
});

new Server (app.handle).run ({"app", "--all"});
