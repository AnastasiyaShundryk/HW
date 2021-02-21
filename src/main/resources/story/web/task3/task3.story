Scenario: Nested steps. Favorite boards

Given I am on the main application page
Then the page title is equal to 'Trello'
When I sign in as <email> with <password>
Then the page with the URL containing 'trello' is loaded

When I find >= '1' elements by By.xpath(//div[2]/ul/li) and for each element do
|step
|When I click on element located `By.xpath(//div[3]/div[2]/ul/li)`
|When I click on element located `By.xpath(//*[@id="content"]/div/div[1]/div[1]/a/span)`


Examples:
properties/environment/test/myUserCreds.table 