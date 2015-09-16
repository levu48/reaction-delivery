ReactionCore.registerPackage
  name: 'reaction-delivery' # usually same as meteor package
  autoEnable: false # auto-enable in dashboard
  settings:
    mode: false
    key_id: ""
    key_secret: ""

  registry: [
    # all options except route and template
    # are used to describe the
    # dashboard 'app card'.
    {
      provides: 'dashboard'
      label: 'Delivery'
      description: "Delivery Payment for Reaction Commerce"
      icon: 'fa fa-money' # glyphicon/fa
      cycle: '4' # Core, Stable, Testing (currently testing)
      container: 'dashboard'  #group this with settings
    }
    # configures settings link for app card
    # use 'group' to link to dashboard card
    {
      route: 'delivery'
      provides: 'settings'
      container: 'dashboard'
    }
    # configures template for checkout
    # paymentMethod dynamic template
    {
      template: 'deliveryPaymentForm'
      provides: 'paymentMethod'
    }
  ]
  # array of permission objects
  permissions: [
    {
      label: "Deliverypay"
      permission: "dashboard/payments"
      group: "Shop Settings"
    }
  ]
