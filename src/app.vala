using Valum;
using VSGI;

var app = new Router ();

app.get("", (req, res) => {
    var writer = new DataOutputStream (res);
    writer.put_string ("Hello world!");
});

new SoupServer (app, 3003).run ();
