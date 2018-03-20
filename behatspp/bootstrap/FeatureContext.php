<?php

use Behat\Behat\Tester\Exception\PendingException;
use Behat\Behat\Context\Context;
use Behat\Gherkin\Node\PyStringNode;
use Behat\Gherkin\Node\TableNode;
use Behat\MinkExtension\Context\MinkContext;

/**
 * Defines application features from the specific context.
 */
class FeatureContext extends MinkContext implements Context
{
    /**
     * Initializes context.
     *
     * Every scenario gets its own context instance.
     * You can also pass arbitrary arguments to the
     * context constructor through behat.yml.
     */
    public function __construct()
    {
    }
     /**
   * @Then /^I (?:am|should be) redirected to "([^"]*)"$/
   */
  /**public function iAmRedirectedTo($actualPath) {
    $headers = $this->getSession()->getResponseHeaders();
    assertTrue(isset($headers['Location'][0]));

    $redirectComponents = parse_url($headers['Location'][0]);
    assertEquals($redirectComponents['path'], $actualPath);
  }*/

    /**
     * @When I visit :arg1
     */
    public function iVisit($arg1)
    {
        $this->visitPath('/');
    }

    /**
     * @When I enter :arg1 for :arg2
     */
    public function iEnterFor($value, $field)
    {
        $field = $this->fixStepArgument($field);
        $value = $this->fixStepArgument($value);
        $this->getSession()->getPage()->fillField($field, $value);
    }

    /**
     * @When I click :arg1
     */
    public function iClick($link)
    {
        $link = $this->fixStepArgument($link);
        $this->getSession()->getPage()->clickLink($link);
        sleep(5);
    }

    /**
     * @Then I follow :arg1 as the first result
     */
    public function iFollowAsTheFirstResult($arg1)
    {
        sleep(5);
    }
}
