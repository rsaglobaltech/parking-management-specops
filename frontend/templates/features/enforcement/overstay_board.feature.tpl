Feature: Overstay Enforcement Board
  Scenario: Operator reviews vehicles that exceeded allowed duration
    Given vehicle "XYZ-999" has parked for "14" hours
    And allowed maximum parking duration is "12" hours
    When the operator opens the "/enforcement" page
    Then the vehicle should appear in the overstay list
    And the UI should show it exceeded the limit by "2" hours
    And the operator should be able to mark the case for enforcement follow-up
