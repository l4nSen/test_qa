
Feature: register a log an account in the webpage Utest


  @Registeruser
  Scenario Outline: User  creates an account
    Given the user is on Homepage
    When the user clicks on become a utester
    And user fills all the forms
      | firstName | lastName | email | day   | month  | year    |languages| city | postalcode | country | computer | version | language| mobile| model |system |password | confirmpassword |agreement1 | agreement2 |agreement3 |
      | <firstName> | <lastName> | <email> | <day> | <month> |<year> |<languages> | <city> | <postalcode> | <country> |<computer> | <version> | <language>  |<mobile> | <model> | <system> | <password> | <confirmpassword> | <agreement1> | <agreement2> |<agreement3> |
    Then the user successfully  created  the account
    Examples:
      | firstName | lastName | email | day   | month  | year    |languages| city | postalcode | country | computer | version | language| mobile| model |system |password | confirmpassword |agreement1 | agreement2 |agreement3 |
      | Luis | Dominguez  | l4n.dominguez@hotmail.com | 16 | June | 1996  |English | Panama | 44005| Panama |   Windows  | Mojave 10.14 |  Spanish  |Samsung |J7|Android 13 |Wsxaq123., | Admin1234 | test456 | test456  | test456  |


  @LogInAccount
  Scenario Outline: user can log in account
    Given the user has a valid account
    When the user clicks on Log in
    And enters email
    | <Mail> |
    And User puts password
    | <Psw> |
    And clicks sign in
    Then the user is successfully logged in
    Examples:
      | Mail                   | Psw       |
      | l4n.dominguez@hotmail.com   | Admin1234 |


  @RegisterAccountWithEmailUsed
  Scenario Outline: the user cannot create an account with email already registered
    Given The user is on Homepage
    When the user clicks on Log in
    And user enters email
      | <Mail> |
    And User Clicks create an account
    Then validate message account in use
    Examples:
      | Mail|
      | l4n.dominguez@hotmail.com  |