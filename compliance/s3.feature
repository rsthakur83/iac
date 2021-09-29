Feature: Check tags on the S3 resource
Scenario Outline: Ensure that specific tags are defined
        Given I have AWS S3 Bucket defined
        When it has tags
        Then it must contain tags
        #Then it must have <tags> and <value>
        Then it must contain "<tags>"
        And its value must match the "<value>" regex
        #Then it must contain bucket and testing
        #Then it must contain <> and <value>
        #And its value must match the "<value>" regex
Examples:
   | tags | value   |
   | bucket        | testing                 |
