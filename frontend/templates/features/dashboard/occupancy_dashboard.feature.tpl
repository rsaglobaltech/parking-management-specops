Feature: Parking Operations Dashboard
  Scenario: Operator views capacity status and threshold alert
    Given the parking facility "Lot-A" has total capacity of "200" spots
    And current occupancy is "190" vehicles
    And the configured alert threshold is "90" percent
    When the operator opens the "/dashboard" page
    Then the dashboard should show "190" occupied spots
    And the dashboard should show "10" available spots
    And a capacity threshold alert should be visible
