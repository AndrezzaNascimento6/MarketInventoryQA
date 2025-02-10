@test
Feature: Product Registration
  As a user
  I should be able to
  Manage market inventory

Scenario: Register a product
  Given I am registering a product in inventory
  When I enter valid product informations
  Then product will be registred successfully

Scenario: Edit a product
  Given I already registered a product
  When I edit this product informations
  Then product will be edited successfully

Scenario: Delete a product
  Given I have a product in inventory
  When I delete this product
  Then product will be deleted successfully


Scenario Outline: Decrease product amount
  Given I have a product amount "<amount>" in inventory
  When I decrease this product amount "<decreaseValue>"
  Then product amount will be decreased "<newValue>" successfully

Examples:
  | amount | decreaseValue | newValue |
  | 3      | 1            | 2.0      |
  | 2      | 1            | 1.0      |
  | 5      | 5            | 0.0      |
