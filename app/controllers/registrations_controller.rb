class RegistrationsController < Devise::RegistrationsController

  protected
  def update_resource(resource, params)
    resource.update_without_password(params)
  end

end

###### permet d'enlever la modification du profil protégée par mot de pass ######