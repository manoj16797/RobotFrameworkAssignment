*** Settings ***
Resource  ../Operational/instructions.robot
Resource  ../Operational/Variables.robot

*** Test Cases ***
Opening Myntra Web Application
    Open Myntra Website
    Navigate to category
    Click on a particular category
    Select a unique product

