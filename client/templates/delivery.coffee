Template.delivery.helpers
  packageData: ->
    return ReactionCore.Collections.Packages.findOne({name:"reaction-delivery"})

AutoForm.hooks "delivery-update-form":
  onSuccess: (operation, result, template) ->
    Alerts.removeSeen()
    Alerts.add "Delivery settings saved.", "success"

  onError: (operation, error, template) ->
    Alerts.removeSeen()
    Alerts.add "Delivery settings update failed. " + error, "danger"