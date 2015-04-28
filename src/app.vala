using Valum;
using VSGI.Soup;

var app = new Router ();

app.get("", (req, res) => {
    var writer = new DataOutputStream (res);
    writer.put_string ("Hello world!");
});

new Server (app, 3003).run ();
