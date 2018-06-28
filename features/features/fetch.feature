Feature: fetching stock data from NYSE

@simple
Scenario Outline: fetch data for a single company from one date range and store as json
	Given the ticker symbol "<sym>", the start date "<start>" and the end date "<end>"
	When I send the request to the NYSE
	Then I should receive the stock data for the specified time frame
	
	Examples: 
	|sym|start|end|
	|MKL|2012-01-01|2018-06-05|
	|GOOG|2012-01-01|2018-06-05|

@moderate
Scenario Outline: fetch data for multiple companies from one date range and store as json
	Given the ticker symbols "<a>" "<b>" and "<c>", the start date "<start>" and the end date "<end>"
	When I send the request to the NYSE
	Then I should receive the stock data for the specified time frame
	
	Examples:
	|a|b|c|start|end|
	|MKL|GOOG|AAPL|2000-01-01|2018-06-17|
	
@full
Scenario Outline: fetch data for entire market and store as json
	Given the start date "<start>" and the end date "<end>"
	When I send the request to the NYSE
	Then I should receive the stock data for the specified time frame
	
	Examples:
	|start|end|
	|2000-01-01|2018-06-17|