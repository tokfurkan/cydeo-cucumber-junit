Feature: Web table user order feature


  Scenario: User should be able to place order and order seen in web table

    Given user is already logged in and on order page
    When user selects product type "Familybea"
    And user enters quantity 2
    And user enters customer name "Sherlock Holmes"
    And user enters street "221B Baker Street"
    And user enters city "London"
    And user enters state "England"
    And user enters zipcode "50505"
    And user enters credit card type "MasterCard"
    And user enters credit card number "11111222222333344444"
    And user enters expiry date "12/23"
    And user enters process order button
    Then user should see "Sherlock Holmes" in first row of the web table

  @wip
  Scenario Template: User should be able to place order and order seen in web table

    Given user is already logged in and on order page
    When user selects product type "<productType>"
    And user enters quantity <quantity>
    And user enters customer name "<customerName>"
    And user enters street "<street>"
    And user enters city "<city>"
    And user enters state "<state>"
    And user enters zipcode "<zipcode>"
    And user enters credit card type "<cardType>"
    And user enters credit card number "<cardNumber>"
    And user enters expiry date "<expDate>"
    And user enters process order button
    Then user should see "<expectedName>" in first row of the web table

    Examples: Famous female scientists
      | productType | quantity | customerName       | street     | city   | state   | zipcode | cardType | cardNumber        | expDate | expectedName       |
      | MoneyCog    | 2        | Marie Curie        | Londont st | London | England | 58505   | Visa     | 11112222333334444 | 12/24   | Marie Curie        |
      | Familybae   | 3        | Rosalind Franklin  | Londont st | London | England | 58505   | Visa     | 11112222333334444 | 12/24   | Rosalind Franklin  |
      | Screenable  | 4        | List Meitner       | Londont st | London | England | 58505   | Visa     | 11112222333334444 | 12/24   | List Meitner       |
      | MoneyCog    | 5        | Chien-Shiung Wu    | Londont st | London | England | 58505   | Visa     | 11112222333334444 | 12/24   | Chien-Shiung Wu    |
      | MoneyCog    | 6        | Barbara McClintock | Londont st | London | England | 58505   | Visa     | 11112222333334444 | 12/24   | Barbara McClintock |

    Examples: Famous male scientists
      | productType | quantity | customerName          | street     | city   | state   | zipcode | cardType | cardNumber        | expDate | expectedName          |
      | MoneyCog    | 2        | Charles Darwin        | Londont st | London | England | 58505   | Visa     | 11112222333334444 | 12/24   | Charles Darwin        |
      | Familybae   | 3        | Albert Einstein       | Londont st | London | England | 58505   | Visa     | 11112222333334444 | 12/24   | Albert Einstein       |
      | Screenable  | 4        | CV Raman              | Londont st | London | England | 58505   | Visa     | 11112222333334444 | 12/24   | CV Raman              |
      | MoneyCog    | 5        | Galileo               | Londont st | London | England | 58505   | Visa     | 11112222333334444 | 12/24   | Galileo               |
      | MoneyCog    | 6        | Isaac Newton          | Londont st | London | England | 58505   | Visa     | 11112222333334444 | 12/24   | Isaac Newton          |
      | MoneyCog    | 6        | Arnold Schwarzenegger | Londont st | London | England | 58505   | Visa     | 11112222333334444 | 12/24   | Arnold Schwarzenegger |
