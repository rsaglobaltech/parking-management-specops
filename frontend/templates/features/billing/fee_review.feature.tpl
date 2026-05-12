Feature: Parking Fee Review
  Scenario: Driver reviews calculated fee before payment
    Given vehicle "ABC-123" entered at "10:00"
    And vehicle "ABC-123" exits at "12:30"
    When the driver opens the "/billing" page for the active ticket
    Then the UI should display the calculated parking fee
    And the UI should show the tariff used for the calculation
    And the UI should allow the driver to continue to payment
