require 'test_helper'

class ContactsControllerTest < ActionController::TestCase
  setup do
    @contact = contacts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contacts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contact" do
    assert_difference('Contact.count') do
      post :create, contact: { canalingreso_id: @contact.canalingreso_id, con_apellido: @contact.con_apellido, con_boton_sitio: @contact.con_boton_sitio, con_confirmado: @contact.con_confirmado, con_mail: @contact.con_mail, con_nombre: @contact.con_nombre, con_nya: @contact.con_nya, con_obs: @contact.con_obs, con_password2: @contact.con_password2, con_password: @contact.con_password, con_password_confirmacion: @contact.con_password_confirmacion, con_subscribir: @contact.con_subscribir, con_telefono: @contact.con_telefono, con_telefono_sn: @contact.con_telefono_sn, option_id: @contact.option_id, profile_id: @contact.profile_id }
    end

    assert_redirected_to contact_path(assigns(:contact))
  end

  test "should show contact" do
    get :show, id: @contact
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contact
    assert_response :success
  end

  test "should update contact" do
    patch :update, id: @contact, contact: { canalingreso_id: @contact.canalingreso_id, con_apellido: @contact.con_apellido, con_boton_sitio: @contact.con_boton_sitio, con_confirmado: @contact.con_confirmado, con_mail: @contact.con_mail, con_nombre: @contact.con_nombre, con_nya: @contact.con_nya, con_obs: @contact.con_obs, con_password2: @contact.con_password2, con_password: @contact.con_password, con_password_confirmacion: @contact.con_password_confirmacion, con_subscribir: @contact.con_subscribir, con_telefono: @contact.con_telefono, con_telefono_sn: @contact.con_telefono_sn, option_id: @contact.option_id, profile_id: @contact.profile_id }
    assert_redirected_to contact_path(assigns(:contact))
  end

  test "should destroy contact" do
    assert_difference('Contact.count', -1) do
      delete :destroy, id: @contact
    end

    assert_redirected_to contacts_path
  end
end
