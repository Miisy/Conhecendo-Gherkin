Feature: User Authentication
  As a registered user, I want to log in to the system so that I can access my account and the home page

Given the user is on the login page

Scenario: User login with valid credentials
  When the user enters a valid username and password and clicks the login button
  Then the user is redirected to the home page with a welcome message displayed

Scenario: User login with invalid credentials
  When the user enters an invalid username or password and clicks the login button
  Then the system displays an error message indicating invalid credentials

Scenario: User login with empty fields
  When the user leaves the username and password fields empty and clicks the login button
  Then the system displays an error message indicating that the fields are required

Scenario: User login with only username
  When the user enters a valid username, leaves the password field empty and clicks the login button
  Then the system displays an error message indicating that the password is required

Scenario: User login with only password
  When the user leaves the username field empty, enters a valid password and clicks the login button
  Then the system displays an error message indicating that the username is required

Scenario: User login with special characters in username
  When the user enters a username with special characters, a valid password and clicks the login button
  Then the user is redirected to the home page with a welcome message displayed

Scenario: User login with valid credentials checking "Remember Me"
  When the user enters a valid username and password, clicks the "Remember Me" checkbox and clicks the login button
  Then the user is redirected to the home page, sees a welcome message and the session is remembered for future visits