Feature: Vehicle Entry UI
  Scenario: Gate operator registers vehicle entry with an available slot
    Given the gate operator is on the "/entry" page
    And there are available parking spots
    When the operator submits license plate "ABC-123" for gate "North"
    Then the UI should confirm the vehicle entry
    And the UI should display the assigned parking ticket id
    And the occupancy summary should update
