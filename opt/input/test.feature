Feature: Test di Guru up

  Scenario: Accedere alla Piattaforma
    Given I have a web browser open
    When I navigate to "https://clienteprova2.guru-hrm.it/pages/login.aspx"
    Then I should see a Login Button
        Given I clicked the Login button
        Then I should see a Login Page
        Insert the Login data on the Login Page
	    If I see a 2FA page
	    	Then I should ignore it and continue
	    If the current tab is "about:blank"
	    	Then I should navigate to "https://clienteprova2.guru-hrm.it/pages/login.aspx"
            Given I clicked the Login Button on the Login Page
	    Then I should see a calendar on the right with the date of today

  Scenario: Naviga su Valutazione
    Given I have a web browser open
    When I navigate to "https://clienteprova2.guru-hrm.it/pages/login.aspx"
    Then I should click the Login Button
    Insert the credentials
    Then click the Login button
    Then navigate to "https://clienteprova2.guru-hrm.it/pages/home.aspx"
    Then I should be on "GURU UP - Guida Universale Risorse Umane"
    Then I should see a text "Valutazione" on the left menu
    If I don't see it I should look on the left for a handshake icon
    Given I click on it