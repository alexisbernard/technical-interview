require "test_helper"

class SubscriptionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @subscription = subscriptions(:alice)
  end

  test "should get index" do
    get subscriptions_url
    assert_response :success
  end

  test "should get new" do
    get new_subscription_url
    assert_response :success
  end

  test "should create subscription" do
    bob = users(:bob)
    assert_difference("Subscription.count") do
      post subscriptions_url, params: { subscription: { user_id: bob.id, start_on: Date.today, end_on: Date.tomorrow, renew_on: Date.tomorrow } }
    end

    assert_redirected_to subscription_url(Subscription.last)
  end

  test "should show subscription" do
    get subscription_url(@subscription)
    assert_response :success
  end

  test "should get edit" do
    get edit_subscription_url(@subscription)
    assert_response :success
  end

  test "should update subscription" do
    patch subscription_url(@subscription), params: { subscription: { renew_on: nil } }
    assert_redirected_to subscription_url(@subscription)
    refute(@subscription.reload.renew_on)
  end

  test "should destroy subscription" do
    assert_difference("Subscription.count", -1) do
      delete subscription_url(@subscription)
    end

    assert_redirected_to subscriptions_url
  end
end
