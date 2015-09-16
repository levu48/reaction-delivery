Router.map ->
  @route 'delivery',
    controller: ShopAdminController
    path: 'dashboard/settings/delivery',
    template: 'delivery'
    waitOn: ->
      return ReactionCore.Subscriptions.Packages