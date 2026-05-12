Feature: Receipt Delivery Status
  Scenario: Driver sees receipt delivery confirmation after payment
    Given ticket "TCK-1001" has been paid successfully
    And driver contact channel is "EMAIL"
    When the driver opens the "/receipt/TCK-1001" page
    Then the UI should show that the payment receipt was sent
    And the UI should show the delivery channel "EMAIL"
