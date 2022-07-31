# Wezbo Covid-Tracer App

The app is built on salesforce platform. It aims on informing the citizens and the health offiicals of a country about a disease spread in the country. Hence this application helps in controlling the situation of a disease in the region.

-   A web application that helps the Goverment to identify hotspots, hence aiding in curbing the spread of the infection.
-   The healthcare officials have to add the new cases of the disease in the health admin view section of  the application so that the database can be automatically be updated and reflected on the health admin view itself.
-   There are two views available in the health admin section : Location View , Person View.
-   In the Location View we can see the areas which are different hotspots of the diseases and if required can update the details.
-   In the Person View we can see and update the information of the existiong people on the database and their level of infection.
-   We have used the async feature of salesforce which releases us from the burden to manually update and delete the old records which have crossed a limit of 30 days.
-   The Frontend of the Web Application uses Aura framework which uses Javascript and CSS. We have used the out of the box features of salesforce which are the lightning web components which can between directly used in the application and we have tried to customize them too.

## Improvements
We look forward to add functionalities like notification alerts using REST APIs on salesforce and disease survey form to get more precise result.
We also look forward to use google maps to show the affected regions. 

![Contact_Tracing_App](https://github.com/choudharymanish8585/contact-tracing/blob/master/screenshots/screenshots.png)

## The technologies used to make this web-application are:

-   Apex Development
-   Async Apex
-   Aura Framework Development
-   SOQL - Salesforce Object Query Language
-   SOSL - Salesforce Object Search Language
-   Database Manipulation
-   Lightning Web Components


## Install the Application

**Make sure you have "git" and Salesoforce CLI installed in your system. Follow below steps to upload object schema along with permission set in your Salesforce Org.**

-   Clone "master" branch from this git repo `git clone https://github.com/hrishi2107/Contact-Tracer.git`
-   Open Terminal/Command Prompt and navigate to above folder
-   Authorize your Salesforce Org `sfdx force:auth:web:login -a TestOrg1`
-   Deploy all metadata to your Salesforce Org `sfdx force:source:deploy -p force-app/main/default/`
-   Assign permission set to current user `sfdx force:user:permset:assign -n Health_Admin`
-   Open Saleforce Org `sfdx force:org:open` and switch to "Contact Tracer" application
