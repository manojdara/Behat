<?php

use Behat\Behat\Tester\Exception\PendingException;
use Behat\Behat\Context\Context;
use Behat\Gherkin\Node\PyStringNode;
use Behat\Gherkin\Node\TableNode;
use Behat\MinkExtension\Context\MinkContext;

/**
 * Defines application features from the specific context.
 */
class FeatureContext implements Context
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
     * @Given I fill in :arg1
     */
    public function iFillIn($arg1)
    {
        sleep(7);
    }


    /**
     * @Given I should wait for 10seconds
     */
    public function iShouldWaitForSeconds()
    {
        sleep(5);
    }
        /**
     * @Given I click on :arg1
     */
    public function iClickOn($arg1)
    {
        $arg1 = $this->fixStepArgument($arg1);
        $this->getSession()->getPage()->clickLink($arg1);
    }

    /**
     * @Given I check the radio button :arg1
     */
    public function iCheckTheRadioButton($labelText)
       {
        $page = $this->getSession()->getPage();
        $radioButton = $page->find('named', ['radio', $labelText]);
        if ($radioButton) {
            $select = $radioButton->getAttribute('name');
            $option = $radioButton->getAttribute('value');
            $page->selectFieldOption($select, $option);
            return;
        }

        throw new Exception("Radio button with label {$labelText} not found");
    }
}
