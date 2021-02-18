Scenario: sign up user

Given I am on the main application page

When I click on an element by the xpath '//div/a[2]'

When I enter '<email>' in a field by the xpath '//input[@id='email']'
When I click on an element by the xpath '//*[@id="signup-submit"]'

When I enter '<password>' in a field by the xpath '//*[@id='password']'
When I enter '<fullName>' in a field by the xpath '//*[@id="displayName"]'

When I click on an element by the xpath '//*[@id='signup-submit']/span/span'


Then the page with the URL 'https://trello.com' is loaded

Examples:
|email										|fullName								|password|
|#{generate(regexify '[a-z]{5}')}@mail.test |#{generate(regexify '[A-Z]{1}[a-z]{5}')}|#{generate(regexify '[0-9]{5}[a-z]{5}')}|	
|#{generate(regexify '[a-z]{5}')}@mail.test	|#{generate(regexify '[A-Z]{1}[a-z]{5}')}|#{generate(regexify '[0-9]{5}[a-z]{5}')}|
