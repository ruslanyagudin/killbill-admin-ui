require 'test_helper'

class Kaui::RefundTest < ActiveSupport::TestCase
  fixtures :refunds

  test "can serialize from json" do
    as_json = refunds(:refund_for_pierre)
    refund = Kaui::Refund.new(as_json)
    
    assert_equal as_json["refund_id"], refund.refund_id
    assert_equal as_json["paymentId"], refund.payment_id
    assert_equal as_json["refundAmount"], refund.refund_amount
    assert_equal as_json["currency"], refund.currency
    assert_equal as_json["adjusted"], refund.adjusted
    assert_equal as_json["requestedDate"], refund.requested_date
    assert_equal as_json["effectiveDate"], refund.effective_date
    assert_equal as_json["adjustments"], refund.adjustments
  end
end