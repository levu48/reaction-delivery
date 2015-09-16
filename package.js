Package.describe({
  summary: "Reaction Delivery - Payment on delivery",
  name: "levu48:reaction-delivery",
  version: "0.0.1",
  git: "https://github.com/levu48/reaction-delivery.git"
});

Package.onUse(function(api, where) {
  api.versionsFrom('METEOR@1.0');
  api.use("meteor-platform");
  api.use("coffeescript");
  api.use("less");
  api.use("reactioncommerce:core@0.5.0");
  api.use("http");

  api.addFiles("server/register.coffee", ["server"]); // register as a reaction package
  api.addFiles("server/methods.coffee", ["server"]);
  api.addFiles("server/BrowserPolicy.coffee", ["server"]);

  api.addFiles([
    "common/collections.coffee",
    "common/routing.coffee"
  ], ["client", "server"]);

  api.addFiles([
    "client/templates/delivery.html",
    "client/templates/delivery.coffee",
    "client/templates/cart/checkout/payment/methods/delivery/delivery.html",
    "client/templates/cart/checkout/payment/methods/delivery/delivery.coffee"
  ], ["client"]);
});
