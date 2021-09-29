Feature: Check acl resource
Scenario Outline: Ensure that specific  acl
        Given I have AWS S3 that supports values defined
        When it has values
        Then it must contain values
        Then it must contain "values"
        And its value must match the "<value>>" regex

        #        Then it must contain "<acl>"
        #And its value must match the "<private>" regex
        #Then it must contain bucket and testing
        #Then it must contain <> and <value>
        #And its value must match the "<value>" regex
Examples:
  | values | value   |
  | acl | private   |
