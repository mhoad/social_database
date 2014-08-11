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
      post :create, contact: { comments: @contact.comments, contacted: @contact.contacted, email: @contact.email, industry_influencer: @contact.industry_influencer, name: @contact.name, power_user: @contact.power_user, twitter_handle: @contact.twitter_handle, user_id: @contact.user_id, website: @contact.website }
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
    patch :update, id: @contact, contact: { comments: @contact.comments, contacted: @contact.contacted, email: @contact.email, industry_influencer: @contact.industry_influencer, name: @contact.name, power_user: @contact.power_user, twitter_handle: @contact.twitter_handle, user_id: @contact.user_id, website: @contact.website }
    assert_redirected_to contact_path(assigns(:contact))
  end

  test "should destroy contact" do
    assert_difference('Contact.count', -1) do
      delete :destroy, id: @contact
    end

    assert_redirected_to contacts_path
  end
end
