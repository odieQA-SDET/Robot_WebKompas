====================================================================
Web testing with Robot Framework and SeleniumLibrary And Gherkin/BDD
====================================================================

`Robot Framework`_ is a generic open source test automation framework and
SeleniumLibrary_ is one of the many test libraries that can be used with
it. In addition to showing how they can be used together for web testing,
this AutomationTesting introduces the basic Robot Framework test data syntax, how tests
are executed, and how logs and reports look like.

.. contents:: **Contents:**
   :depth: 1
   :local:

Downloading AutomationTesting package
================================================

To get the demo, you can either `download`_ the repository from GitHub or checkout
the `source code`_ directly. As a result you get AutomationTesting directory with
``TestCase`` sub directories.

Example `test cases`_ and `generated results`_ are available also online.
There is thus no need to download the demo if you are not interested in
`running it`__ yourself.

__ `running AutomationTesting`_

Demo application
================

The Web Automation Testing of www.kompas.com is a very simple login page shown below. With
user name ``your email`` and password ``your password`` you get into a welcome page (Selamat Datang), and
otherwise you end up to an error alert/massage.


Test cases
==========

Test case files as well as a resource file used by them are located in
the ``TestCases`` directory. Click file names below to see the latest versions
online.

`TC1.LoginSukses.robot`_
    A test suite with a single test for valid login.

    This test has a workflow that is created using keywords in
    the imported resource file.

`TC2.LoginGagal.robot`_
    A test suite containing tests related to invalid login.

    These tests are data-driven by their nature. They use a single
    keyword, specified with the ``Test Template`` setting, that is called
    with different arguments to cover different scenarios.

    This suite also demonstrates using setups and teardowns in
    different levels.

`Gherkin_Login.robot`_
    A test suite with a single Gherkin style test.

    This test is functionally identical to the example in the
    `TC1.LoginSukses.robot`_ file.

`Gherkin.SearchBerita.robot`_
    A test suite with a single Gherkin style test.

This test is functionally identical to the example in the
    `TC3.SearchBerita.robot`_ file.

`Resource.Login.robot`_
    A resource file with reusable keywords and variables.

    The system specific keywords created here form our own
    domain specific language. They utilize keywords provided
    by the imported SeleniumLibrary_.

See `Robot Framework User Guide`_ for more details about the test data syntax.

Generated results
=================

After `running tests`_ you will get report and log in HTML format. Example
files are also visible online in case you are not interested in running
the demo yourself:

- `report.html`_
- `log.html`_

Running demo
============

Preconditions
-------------

A precondition for running the tests is having `Robot Framework`_ and
SeleniumLibrary_ installed, and they in turn require
Python_. Robot Framework `installation instructions`__ cover both
Robot and Python installations, and SeleniumLibrary has its own
`installation instructions`__.

In practice it is easiest to install Robot Framework and
SeleniumLibrary along with its dependencies using `pip`_ package
manager. Once you have pip installed, all you need to do is running
these commands::

    pip install -r requirements.txt

__ https://github.com/robotframework/robotframework/blob/master/INSTALL.rst
__ https://github.com/robotframework/SeleniumLibrary#installation

Starting AutomationTesting
--------------------------

Running tests
-------------

The `test cases`_ are located in the ``TestCase`` directory. They can be
executed using the ``robot`` command::

    robot TestCase

.. note:: If you are using Robot Framework 2.9 or earlier, you need to
          use the ``pybot`` command instead.

You can also run an individual test case file and use various command line
options supported by Robot Framework::

    robot TestCase/TC1.LoginSukses.robot
    robot --test InvalidUserName --loglevel DEBUG TestCase

Run ``robot --help`` for more information about the command line usage and see
`Robot Framework User Guide`_ for more details about test execution in general.

Using different browsers
------------------------

The browser that is used is controlled by ``${BROWSER}`` variable defined in
`Resource.Login.robot`_ resource file. Chrome browser is used by default, but that
can be easily overridden from the command line::

    robot --variable BROWSER:Firefok TestCase
    robot --variable BROWSER:IE TestCase

Consult SeleniumLibrary_ documentation about supported browsers.

.. _Robot Framework: http://robotframework.org
.. _SeleniumLibrary: https://github.com/robotframework/SeleniumLibrary
.. _Python: http://python.org
.. _pip: http://pip-installer.org
.. _download: https://github.com/robotframework/AutomationTesting/archive/master.zip
.. _source code: https://github.com/robotframework/AutomationTesting.git
.. _TC2.LoginGagal.robot: https://github.com/robotframework/AutomationTesting/master/TestCases/TC2.LoginGagal.robot
.. _TC3.SearchBerita.robot: https://github.com/robotframework/AutomationTesting/master/TestCases/TC3.SearchBerita.robot
.. _Gherkin.Login.robot: https://github.com/robotframework/AutomationTesting/master/TestCases/Gherkin.Login.robot
.. _Gherkin.SearchBerita.robot: https://github.com/robotframework/AutomationTesting/master/TestCases/Gherkin.SearchBerita.robot
.. _Resource.Login: https://github.com/robotframework/AutomationTesting/master/TestCases/Resource.Login.robot
.. _report.html: http://robotframework.org/AutomationTesting/report.html
.. _log.html: http://robotframework.org/AutomationTesting/log.html
.. _Robot Framework User Guide: http://robotframework.org/robotframework/#user-guide
